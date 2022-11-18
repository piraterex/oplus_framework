.class Landroid/widget/TextView$CharWrapper;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/GraphicsOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharWrapper"
.end annotation


# instance fields
.field private greylist-max-o mChars:[C

.field private greylist-max-o mLength:I

.field private greylist-max-o mStart:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmChars(Landroid/widget/TextView$CharWrapper;[C)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    return-void
.end method

.method public constructor greylist-max-o <init>([CII)V
    .locals 0
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 14033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14034
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 14035
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 14036
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 14037
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .locals 2
    .param p1, "off"    # I

    .line 14050
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public greylist-max-o drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/BaseCanvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    .line 14077
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 14078
    return-void
.end method

.method public greylist-max-o drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/BaseCanvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "p"    # Landroid/graphics/Paint;

    .line 14083
    move-object v0, p0

    sub-int v11, p3, p2

    .line 14084
    .local v11, "count":I
    sub-int v12, p5, p4

    .line 14085
    .local v12, "contextCount":I
    iget-object v2, v0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v3, p2, v1

    add-int v5, p4, v1

    move-object v1, p1

    move v4, v11

    move v6, v12

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 14087
    return-void
.end method

.method public whitelist getChars(II[CI)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "buf"    # [C
    .param p4, "off"    # I

    .line 14067
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 14071
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14072
    return-void

    .line 14068
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 12
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "isRtl"    # Z
    .param p6, "advances"    # [F
    .param p7, "advancesIndex"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    .line 14100
    move-object v0, p0

    sub-int v10, p2, p1

    .line 14101
    .local v10, "count":I
    sub-int v11, p4, p3

    .line 14102
    .local v11, "contextCount":I
    iget-object v2, v0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v3, p1, v1

    add-int v5, p3, v1

    move-object/from16 v1, p8

    move v4, v10

    move v6, v11

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    return v1
.end method

.method public blacklist getTextRunCursor(IIZIILandroid/graphics/Paint;)I
    .locals 8
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "isRtl"    # Z
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;

    .line 14109
    sub-int v7, p2, p1

    .line 14110
    .local v7, "contextCount":I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p1, v0

    add-int v5, p4, v0

    move-object v0, p6

    move v3, v7

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    .line 14094
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v0

    return v0
.end method

.method public whitelist test-api length()I
    .locals 1

    .line 14046
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return v0
.end method

.method public greylist-max-o measureText(IILandroid/graphics/Paint;)F
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .line 14090
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    return v0
.end method

.method greylist-max-o set([CII)V
    .locals 0
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 14040
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 14041
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 14042
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 14043
    return-void
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 14059
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 14063
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 14060
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 14055
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    iget v3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
