.class final Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private blacklist mChars:[C

.field private blacklist mLength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 945
    return-void
.end method

.method private blacklist reserve(I)I
    .locals 7
    .param p1, "length"    # I

    .line 1037
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 1038
    .local v0, "oldLength":I
    iget v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v1, p1

    .line 1039
    .local v1, "newLength":I
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 1040
    .local v2, "oldChars":[C
    array-length v3, v2

    .line 1041
    .local v3, "oldCapacity":I
    if-le v1, v3, :cond_0

    .line 1042
    mul-int/lit8 v4, v3, 0x2

    .line 1043
    .local v4, "newCapacity":I
    new-array v5, v4, [C

    .line 1044
    .local v5, "newChars":[C
    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1045
    iput-object v5, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 1047
    .end local v4    # "newCapacity":I
    .end local v5    # "newChars":[C
    :cond_0
    return v0
.end method


# virtual methods
.method public blacklist append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 5
    .param p1, "value"    # F
    .param p2, "precision"    # I

    .line 1009
    const/4 v0, 0x1

    .line 1010
    .local v0, "scale":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1011
    mul-int/lit8 v0, v0, 0xa

    .line 1010
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1013
    .end local v1    # "i":I
    :cond_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-float p1, v1

    .line 1016
    float-to-int v1, p1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 1017
    const-string v1, "-"

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 1019
    :cond_1
    float-to-int v1, p1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 1021
    if-eqz p2, :cond_2

    .line 1022
    const-string v1, "."

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 1023
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1024
    float-to-double v1, p1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float p1, v1

    .line 1025
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 1028
    :cond_2
    return-object p0
.end method

.method public blacklist append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 961
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 8
    .param p1, "value"    # I
    .param p2, "zeroPadWidth"    # I

    .line 965
    const/4 v0, 0x1

    if-gez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 966
    .local v1, "negative":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 967
    neg-int p1, p1

    .line 968
    if-gez p1, :cond_1

    .line 969
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 970
    return-object p0

    .line 974
    :cond_1
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v2

    .line 975
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    .line 977
    .local v3, "chars":[C
    const/16 v4, 0x30

    if-nez p1, :cond_2

    .line 978
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    aput-char v4, v3, v2

    .line 979
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 980
    return-object p0

    .line 983
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_2
    if-eqz v1, :cond_3

    .line 984
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "index":I
    .local v0, "index":I
    const/16 v5, 0x2d

    aput-char v5, v3, v2

    move v2, v0

    .line 987
    .end local v0    # "index":I
    .restart local v2    # "index":I
    :cond_3
    const v0, 0x3b9aca00

    .line 988
    .local v0, "divisor":I
    const/16 v5, 0xa

    .line 989
    .local v5, "numberWidth":I
    :cond_4
    :goto_1
    if-ge p1, v0, :cond_5

    .line 990
    div-int/lit8 v0, v0, 0xa

    .line 991
    add-int/lit8 v5, v5, -0x1

    .line 992
    if-ge v5, p2, :cond_4

    .line 993
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .local v6, "index":I
    aput-char v4, v3, v2

    move v2, v6

    goto :goto_1

    .line 998
    .end local v6    # "index":I
    .restart local v2    # "index":I
    :cond_5
    :goto_2
    div-int v4, p1, v0

    .line 999
    .local v4, "digit":I
    mul-int v6, v4, v0

    sub-int/2addr p1, v6

    .line 1000
    div-int/lit8 v0, v0, 0xa

    .line 1001
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .restart local v6    # "index":I
    add-int/lit8 v7, v4, 0x30

    int-to-char v7, v7

    aput-char v7, v3, v2

    .line 1002
    .end local v4    # "digit":I
    if-nez v0, :cond_6

    .line 1004
    iput v6, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 1005
    return-object p0

    .line 1002
    :cond_6
    move v2, v6

    goto :goto_2
.end method

.method public blacklist append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 953
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 954
    .local v0, "valueLength":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v1

    .line 955
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 956
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 957
    return-object p0
.end method

.method public blacklist clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1

    .line 948
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    .line 949
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1033
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
