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
industrial/commercial product.
*/

#ifndef GETCHAR_H_
#define GETCHAR_H_

#ifdef __cplusplus
extern "C" {
#endif /*__cplusplus*/

int getAChar();
void echo(int on);
void displayBuffer(char *what, char *buf,int lm);

#ifdef __cplusplus
} /* extern "C" */

#endif /*__cplusplus*/


#endif /* GETCHAR_H_ */
