/*
(c) 2015 - Sergio Formiggini
sergio.formiggini@gmail.com

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

A little fee is required if you use this software for business or
industrial/commercial products.
*/

#ifndef SPI_H_
#define SPI_H_

#include "circbuff.h"

class SPI
{
public:
    typedef CircularBuffer::m_size m_size;

    typedef enum enforceProtocol_e {
        __USI_NODATA_FF=0xFF,
        __USI_NODATA_ZERO=0x00,
        __USI_ISDATA_FLAG=0x1B,
        __USI_PRESENCE_FLAG=0xAA
    } enforceProtocol_et;

    SPI();
    ~SPI();
    /**
     * @brief begin
     *          initializes the spi module. The communication
     *          doesn't start until you call the method enabled
     *          with the parameter true.
     *
     *          If you need to restart with different parameters
     *          you have to call first the method enabled(false)
     *          then you may call begin.
     *
     * @param rx
     *          See setRxBufferSpec()
     * @param lrx
     *          See setRxBufferSpec()
     * @param tx
     *          See setTxBufferSpec()
     * @param ltx
     *          See setRxBufferSpec()
     * @param master
     *          If true enables the module to manage a master
     *          mode communication, if false enables the module
     *          to manage a slave communication
     *
     * @param speed
     *          specifies the communication speed.
     *          This field is valid only if master is true.
     *          (*WR) at now this is a delay; the class
     *          is able to use 3 usec to send a byte with
     *          speed 0 (on a 8 Mhz AT Tiny 84). (I apologize!).
     *
     */
    void begin(const void *rx, m_size lrx, const void *tx, m_size ltx, bool master=false, uint16_t speed=0);

    /**
     * @brief enabled
     *          This function enables/disables the communication
     *          services.
     *
     *          When the services are enabled the USI digital ports:
     *          MISO, MOSI and SCK are initialized as slave or master
     *          as specified by the master parameter in the
     *          begin() function.
     *
     *          When the services are enabled and the specified
     *          mode was slave the interrupt routine USI_OVF_VECT
     *          will be enabled and the first char in the transmission
     *          buffer will be transmitted at the first master request.
     *          If the transmission buffer doesn't contain data the
     *          __USI_PRESENCE_FLAG (0xAA) will be transmitted.
     *
     *          When the services are disabled the interrupt
     *          routine will be stopped, the USI registers will
     *          be cleared and the USI digital ports will be
     *          set as inputs without pull-up.
     *
     * @param enab
     *          true enables services
     *
     *          false disables services
     */
    void enabled(bool enab);

    /**
      * @brief outputEnable
      *         this method act only in slave mode. It manages
      *         the MISO pin.
      *
      * @param enab
      *         If enab is true the MISO pin is set as output.
      *
      *         If enab is false the MISO pin is set as input
      *         without pull-up.
      */
    void outputEnable(bool enab);

    //-------------> Rx buffer operations
    /**
     * @brief setRxBufferSpec
     *          This funtion sets the buffer the SPI module uses
     *          to keep received data.
     *
     * @param rx
     *          The pointer of the buffer
     *
     * @param len
     *          The dimension in bytes of the buffer
     *
     * @notes
     *          If the class circular buffer is compiled with
     *          -D CIRCBUFF_POW2DIM the buffer dimension is
     *          rounded at the nearest and smallest power of 2.
     */
    inline void setRxBufferSpec(const void *rx,m_size len) {m_rx.setBufferSpec((char *)rx,len);}

    /**
     * @brief getRcvdData
     *          takes a number of maximum len byte from the
     *          receive buffer and stores them into the rx
     *          buffer.
     *
     * @param rx
     *          is the buffer where the method getRcvdData
     *          will store the data it takes from the receive
     *          buffer.
     *
     * @param len
     *          the maximum number of bytes the method may take
     *          from the receive buffer.
     *
     * @return
     *          the number of bytes the method took from the
     *          receive buffer
     */
    inline m_size getRcvdData(const void *rx, m_size len) {return m_rx.getData((char *)rx,len);}
    inline m_size getRcvdData(char &ch) {return (getRcvdByte(ch)<0)?0:1;}

    /**
     * @brief getRcvdByte
     *          takes a byte from the receive buffer.
     *
     * @return
     *          returns the byte taken from the receive
     *          buffer or -1 if there're no bytes in the
     *          buffer.
     */
    inline int getRcvdByte() {return m_rx.getByte();}
    inline int getRcvdByte(char &ch) {return m_rx.getByte(ch);}

    /**
     * @brief enhancedGetRcvdData
     *          takes a number of maximum len byte from the
     *          receive buffer and stores them into the rx
     *          buffer. this method uses the protocoll specified
     *          for the method enhancedSetData2Xmit (*1).
     *
     * @param rx
     *          is the buffer where the method enhancedGetRcvdData
     *          will store the data it takes from the receive
     *          buffer.
     *
     * @param len
     *          the maximum number of bytes the method may take from
     *          the receive buffer.
     *
     * @return
     *          the number of bytes the method took from the
     *          receive buffer
     */
    m_size enhancedGetRcvdData(const void *rx, m_size len);

    /**
     * @brief enhancedGetRcvdData
     *      overloads the method above to receive a char.
     *
     * @param ch
     *      is the char where the method copies the byte
     *      from the circular buffer.
     *
     * @return
     *      returns 1 if a byte has been copied, otherwise 0
     */
    inline m_size enhancedGetRcvdData(char &ch) {
        return enhancedGetRcvdData((void *)&ch, sizeof(ch));}
    /**
     * @brief enhancedGetRcvdData
     *      overloads some types.
     * @param ch
     * @return
     *      returns the number of bytes the method has read.
     *      At now these methods don't check if there're all the bytes
     *      required to correctly fill the required type.
     */
    inline m_size enhancedGetRcvdData(int &ch) {
        return enhancedGetRcvdData((void *)&ch, sizeof(ch));}
    inline m_size enhancedGetRcvdData(uint8_t &ch) {
        return enhancedGetRcvdData((void *)&ch, sizeof(ch));}
    inline m_size enhancedGetRcvdData(uint16_t &ch) {
        return enhancedGetRcvdData((void *)&ch, sizeof(ch));}
    inline m_size enhancedGetRcvdData(uint32_t &ch) {
        return enhancedGetRcvdData((void *)&ch, sizeof(ch));}
    inline m_size enhancedGetRcvdData(uint64_t &ch) {
        return enhancedGetRcvdData((void *)&ch, sizeof(ch));}

    /**
     * @brief getRcvdDataSize   
     * @return
     *          returns the number of bytes that are kept in the
     *          receive buffer. This method doesn't consider the
     *          use of a protocol, then returns the effective number
     *          of bytes kept in the buffer.
     */
    inline m_size getRcvdDataSize() {return m_rx.dataSize();}

    /**
     * @brief rxBufferDim
     * @return
     *          returns the dimension of the receive buffer.
     */
    inline m_size rxBufferDim() {return m_rx.bufferDim();}

    //-------------> Tx buffer operations
    /**
     * @brief setTxBufferSpec
     *          sets the transmission buffer the SPI module will
     *          use to keep the data will be transmitted.
     *
     * @param tx
     *          is the pointer of the buffer
     *
     * @param len
     *          is the dimension in bytes of the transmission
     *          buffer. If you consider to use the protocol this
     *          module implements - (*1) see:enhancedSetData2Xmit -
     *          you have to consider that the buffer should be almost
     *          double of the minimum of byte the transmission buffer
     *          has to kept.
     *
     * @notes
     *          If the class circular buffer is compiled with
     *          -D CIRCBUFF_POW2DIM the buffer dimension is
     *          rounded at the nearest and smallest power of 2.
     */
    inline void setTxBufferSpec(const void *tx,m_size len) {m_tx.setBufferSpec((char *)tx,len);}

    /**
     * @brief setData2Xmit
     *          this methods inserts bytes into the buffer
     *          the module uses to take the data to send.
     *
     * @param tx
     *          is the pointer of the data to send, or the
     *          data (reference in the overloaded methods)
     *
     * @param len
     *          If tx is a pointer len is the lenght of the data
     *          to put into the buffer to be transmitted
     *
     * @return
     *          returns the number of bytes put into the buffer
     */
    inline m_size setData2Xmit(const void *tx, m_size len)
        {return m_tx.putData((char *)tx,len,true);}
    inline m_size setData2Xmit(const int16_t &tx) {
        return setData2Xmit(&tx,(m_size)sizeof(tx));}
    inline m_size setData2Xmit(const uint16_t &tx) {
        return setData2Xmit(&tx,(m_size)sizeof(tx));}
    inline m_size setData2Xmit(const uint32_t &tx) {
        return setData2Xmit(&tx,(m_size)sizeof(tx));}
    inline m_size setData2Xmit(const uint64_t &tx) {
        return setData2Xmit(&tx,(m_size)sizeof(tx));}
    inline m_size setData2Xmit(const char &tx) {
        setByte2Xmit(tx);
        return 1;}

    /**
     * @brief setByte2Xmit
     *  Stores a byte into the transmission buffer.
     *
     * @param ch
     *  The char to store.
     *
     * @return
     *  returns a value of type CircularBuffer::putres_et.
     *  If no error occurs the method returns CircularBuffer::WRITTEN,
     *  if a byte was inserted overwriting the circular buffer
     *  contents the method returns CircularBuffer::OVERWRITTEN,
     */
    inline CircularBuffer::putres_et setByte2Xmit(const char ch) {return m_tx.putByte(ch,true);}

    /**
     * @brief enhancedSetData2Xmit
     *          This method(s) inserts data into the transmission
     *          buffer.
     *
     *          (*1)
     *          enhancedSetData2Xmit uses a protocol that allows
     *          a flexible communication. The bytes of value: 0xFF,
     *          0x00, 0x1B, 0xAA are prefixed by the byte 0x1B.
     *          All other bytes (if prefixed by 0x1B) affects the
     *          property m_activeSlave ( activeSlave() ). The byte
     *          0xAA is transmitted as first char when a slave using
     *          this protocol answers at the first master request
     *          after slave was enabled ( unless otherwise specified
     *          when the method enabled() is called)
     *
     * @param tx
     *          is the pointer of the data to send, or the data (reference)
     *
     * @param len
     *          If tx is a pointer, len is the lenght of the data
     *          to put into the buffer to be transmitted
     *
     * @return
     *          The number of bytes put into the buffer
     */
    m_size enhancedSetData2Xmit(const void *tx, m_size len);
    inline m_size enhancedSetData2Xmit(const char &tx) {
        return enhancedSetData2Xmit(&tx, (m_size)sizeof(tx));}
    inline m_size enhancedSetData2Xmit(const m_size &tx) {
        return enhancedSetData2Xmit(&tx, (m_size)sizeof(tx));}
    inline m_size enhancedSetData2Xmit(const int &tx) {
        return enhancedSetData2Xmit(&tx, (m_size)sizeof(tx));}
    inline m_size enhancedSetData2Xmit(const uint16_t &tx) {
        return enhancedSetData2Xmit(&tx, (m_size)sizeof(tx));}
    inline m_size enhancedSetData2Xmit(const uint32_t &tx) {
        return enhancedSetData2Xmit(&tx, (m_size)sizeof(tx));}
    inline m_size enhancedSetData2Xmit(const uint64_t &tx) {
        return enhancedSetData2Xmit(&tx, (m_size)sizeof(tx));}

    /**
     * @brief masterSetActiveSlave2Xmit
     *          inserts into the transmission buffer the active-slave-code
     *          the slaves will receive.
     *
     * @param as
     *          The slave code to inset into the buffer. It
     *          should not be: 0x00, 0xFF, 0xAA, 0x1B. (*1)
     *
     * @return
     *          the number of bytes put into the buffer
     */
    inline m_size masterSetActiveSlave2Xmit(uint8_t as) {
    /*    int k=as;k<<=8;k|=SPI::__USI_ISDATA_FLAG;
        return setData2Xmit(k);*/
        setByte2Xmit(__USI_ISDATA_FLAG);
        setByte2Xmit(as);
        return 2;
    }

    /**
     * @brief get2XmitDataSize
     * @return
     *          returns the number of bytes waiting to be trasmitted
     *          still present into the transmission buffer.
     */
    inline m_size get2XmitDataSize() {return m_tx.dataSize();}

    /**
     * @brief txBufferDim
     * @return
     *           returns the whole dimension of the transmission
     *           buffer.
     */
    inline m_size txBufferDim() {return m_tx.bufferDim();}

    /**
     * @brief sendMaster
     *          This method sends and receives data in master
     *          mode. The data to be transmitted will be taken
     *          from the transmission buffer. If a rlen
     *          value is specified, the number of bytes that value
     *          indicates will be kept into the receive buffer.
     *
     *          sendMaster sends all the data kept into the
     *          transmission buffer.
     *
     *          If rlen is bigger than the number of bytes kept
     *          into the transmission buffer __USI_NODATA_FF (0xFF)
     *          will be transmitted in place of the datum to be transmitted.
     *
     * @param rlen
     * @return
     */
    SPI::m_size sendMaster(m_size rlen=0);

    /**
     * @brief activeSlave
     * @return
     *          returns an eventual slave code received.
     */
    inline uint8_t activeSlave() const { return m_activeSlave; }

    //This is not an user callable method! Is the interrupt routine
    //that needs to be public! :)
    static inline void isr();

private:
    /**
     * @brief _setRcvdByte
     * @param ch
     * @return
     */
    inline int _setRcvdByte(uint8_t ch) {return m_rx.putByte(ch,true);} // Interrupt writes

    /**
     * @brief _getByte2Xmit
     * @param ch
     * @return
     */
    inline int _getByte2Xmit() {return m_tx.getByte();} // Interrupt reads
    inline int _getByte2Xmit(uint8_t &ch) {return m_tx.getByte((char &)ch);} // Interrupt reads

    /**
     * @brief _spiThis
     * @return
     */
    inline static SPI * _spiThis() {return m_spiThis;}

    /**
     * @brief _output
     * @return
     */
    inline bool _output() const { return m_output; }

#ifdef SPI__USE_ICNT
    static char _icnt;
#endif

    /**
    * @brief setActiveSlave
    * @param activeSlave
    */
    inline void setActiveSlave(const uint8_t &activeSlave) { m_activeSlave = activeSlave; }

    /**
     * @brief setOutput
     * @param output
     */
    inline void setOutput(bool output) { m_output = output; }

    /**
     * @brief delayNops
     * @return
     */
    inline uint16_t delayNops() const {return m_delayNops;}

    /**
     * @brief setDelayNops
     * @param delayNops
     */
    inline void setDelayNops(const uint16_t &delayNops) {m_delayNops = delayNops;}

    /**
     * @brief master
     * @return
     */
    inline bool master() const {return m_master;}

    /**
     * @brief setMaster
     * @param master
     */
    inline void setMaster(bool master) {m_master=master;}

    /**
     * @brief resetTx
     */
    inline void resetTx() {m_tx.reset();}

    /**
     * @brief resetRx
     */
    inline void resetRx() {m_rx.reset();m_enhFlag=false;}

    /**
     * @brief resetBuffers
     */
    inline void resetBuffers() {resetTx();resetRx();}

    /**
     * @brief _setSpiThis
     * @param spith
     */
    inline static void _setSpiThis(SPI *spith) {m_spiThis = spith;}

    /**
     * @brief _enableOvfInterrupt
     * @param fstch
     */
    void _enableOvfInterrupt();

    bool m_master;
    bool m_enhFlag;//To be used only in enhancedGetRcvdData
    bool m_output;

    uint8_t m_activeSlave;
    uint16_t m_delayNops;

    CircularBuffer m_rx;
    CircularBuffer m_tx;

    static SPI * m_spiThis;
};

#endif /* SPI_H_ */
