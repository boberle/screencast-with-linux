/****************************************************************************
 *
 * This is `drawframe', a simple program that draw a frame on the screen.
 * Copyright (C) 2017 Bruno Oberlé
 *
 * MIT License
 * 
 * Copyright (c) 2020 Bruno Oberle
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * For any question or comment, please contact me at boberle.com.
 *
 ****************************************************************************/

/*
 * read commands line arguments
 */
bool read_arguments(int, char **, int *, int *, int *, int *, char *, int *);

/*
 * initialize a window
 */
Window init_frame(Display *, int, Window, int, int, int, int, char *, int);

/*
 * draw the initialized window on the scree
 */
void draw_frame(Display *, int, Window, int, int, int);


