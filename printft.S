/*
 * Copyright (c) 2013 Kyle Isom <kyle@tyrfingr.is>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

/*
 * This is the source file I used to figure out the calling semantics
 * for printf. Format string -> $a0, args in $a1, $a2, ..., $an
 */

.data
outp:	.asciiz	"N = %d\n"

	.text
	.globl main
main:
	addiu	$sp,	$sp,	16
	ori	$t0,	$0,	2
	dla	$t0,	outp
	sd	$t0,	0($sp)
	sd	$t0,	8($sp)

	dla	$a0,	outp
	ori	$a1,	$0,	2
	jal	printf

	ori	$v0,	$0,	1
	ori	$a0,	$0,	0
	syscall

