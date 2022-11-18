.class Landroid/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# static fields
.field public static final blacklist BYTES_OFFSET_UNKNOWN:J = -0x1L


# instance fields
.field public final greylist-max-o bytes:[B

.field public final blacklist bytesOffset:J

.field public final greylist-max-o format:I

.field public final greylist-max-o numberOfComponents:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(IIJ[B)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytesOffset"    # J
    .param p5, "bytes"    # [B

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    .line 740
    iput p2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 741
    iput-wide p3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytesOffset:J

    .line 742
    iput-object p5, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 743
    return-void
.end method

.method synthetic constructor blacklist <init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    return-void
.end method

.method private constructor greylist-max-o <init>(II[B)V
    .locals 6
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .line 735
    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 736
    return-void
.end method

.method public static greylist-max-o createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 789
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_0

    .line 790
    new-array v2, v1, [B

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v2, v0

    move-object v0, v2

    .line 791
    .local v0, "bytes":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2

    .line 793
    .end local v0    # "bytes":[B
    :cond_0
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 794
    .local v0, "ascii":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createDouble(DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 843
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 833
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 835
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 836
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 837
    .local v4, "value":D
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 836
    .end local v4    # "value":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 839
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createSLong(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 784
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 5
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 774
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 776
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 777
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 778
    .local v4, "value":I
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 777
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 780
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createSRational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 829
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 818
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 820
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 821
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 822
    .local v4, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 823
    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 821
    .end local v4    # "value":Landroid/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 825
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 799
    .local v0, "ascii":[B
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    array-length v2, v0

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static greylist-max-o createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 770
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 760
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 762
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 763
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 764
    .local v4, "value":J
    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 763
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 766
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 814
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 803
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 805
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 806
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 807
    .local v4, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 808
    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 806
    .end local v4    # "value":Landroid/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 810
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 756
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 746
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 748
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 749
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 750
    .local v4, "value":I
    int-to-short v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 749
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 752
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method private greylist-max-o getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 17
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    move-object/from16 v1, p0

    .line 853
    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v0, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 855
    .local v0, "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 856
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v4, :pswitch_data_0

    .line 957
    return-object v2

    .line 950
    :pswitch_0
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 951
    .local v4, "values":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_0

    .line 952
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 951
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 954
    .end local v5    # "i":I
    :cond_0
    return-object v4

    .line 943
    .end local v4    # "values":[D
    :pswitch_1
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 944
    .restart local v4    # "values":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_1

    .line 945
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v4, v5

    .line 944
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 947
    .end local v5    # "i":I
    :cond_1
    return-object v4

    .line 934
    .end local v4    # "values":[D
    :pswitch_2
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroid/media/ExifInterface$Rational;

    .line 935
    .local v4, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_2

    .line 936
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    int-to-long v13, v6

    .line 937
    .local v13, "numerator":J
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    int-to-long v10, v6

    .line 938
    .local v10, "denominator":J
    new-instance v6, Landroid/media/ExifInterface$Rational;

    const/4 v12, 0x0

    move-object v7, v6

    move-wide v8, v13

    move-wide v15, v10

    .end local v10    # "denominator":J
    .local v15, "denominator":J
    invoke-direct/range {v7 .. v12}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v6, v4, v5

    .line 935
    .end local v13    # "numerator":J
    .end local v15    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 940
    .end local v5    # "i":I
    :cond_2
    return-object v4

    .line 927
    .end local v4    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_3
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 928
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_3

    .line 929
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    aput v6, v4, v5

    .line 928
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 931
    .end local v5    # "i":I
    :cond_3
    return-object v4

    .line 920
    .end local v4    # "values":[I
    :pswitch_4
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 921
    .restart local v4    # "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_4

    .line 922
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v6

    aput v6, v4, v5

    .line 921
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 924
    .end local v5    # "i":I
    :cond_4
    return-object v4

    .line 911
    .end local v4    # "values":[I
    :pswitch_5
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroid/media/ExifInterface$Rational;

    .line 912
    .local v4, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_5

    .line 913
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 914
    .local v8, "numerator":J
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v10

    .line 915
    .restart local v10    # "denominator":J
    new-instance v6, Landroid/media/ExifInterface$Rational;

    const/4 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v6, v4, v5

    .line 912
    .end local v8    # "numerator":J
    .end local v10    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 917
    .end local v5    # "i":I
    :cond_5
    return-object v4

    .line 904
    .end local v4    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_6
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [J

    .line 905
    .local v4, "values":[J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_6

    .line 906
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 905
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 908
    .end local v5    # "i":I
    :cond_6
    return-object v4

    .line 897
    .end local v4    # "values":[J
    :pswitch_7
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 898
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_7

    .line 899
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    aput v6, v4, v5

    .line 898
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 901
    .end local v5    # "i":I
    :cond_7
    return-object v4

    .line 867
    .end local v4    # "values":[I
    :pswitch_8
    const/4 v4, 0x0

    .line 868
    .local v4, "index":I
    iget v5, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v6

    array-length v6, v6

    if-lt v5, v6, :cond_a

    .line 869
    const/4 v5, 0x1

    .line 870
    .local v5, "same":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_9

    .line 871
    iget-object v7, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v8

    aget-byte v8, v8, v6

    if-eq v7, v8, :cond_8

    .line 872
    const/4 v5, 0x0

    .line 873
    goto :goto_9

    .line 870
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 876
    .end local v6    # "i":I
    :cond_9
    :goto_9
    if-eqz v5, :cond_a

    .line 877
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v6

    array-length v6, v6

    move v4, v6

    .line 881
    .end local v5    # "same":Z
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_a
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v6, :cond_d

    .line 883
    iget-object v6, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v6, v6, v4

    .line 884
    .local v6, "ch":I
    if-nez v6, :cond_b

    .line 885
    goto :goto_c

    .line 887
    :cond_b
    const/16 v7, 0x20

    if-lt v6, v7, :cond_c

    .line 888
    int-to-char v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 890
    :cond_c
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    :goto_b
    nop

    .end local v6    # "ch":I
    add-int/lit8 v4, v4, 0x1

    .line 893
    goto :goto_a

    .line 894
    :cond_d
    :goto_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 860
    .end local v4    # "index":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_9
    iget-object v4, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    const/4 v5, 0x0

    aget-byte v7, v4, v5

    if-ltz v7, :cond_e

    if-gt v7, v6, :cond_e

    .line 861
    new-instance v4, Ljava/lang/String;

    new-array v6, v6, [C

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    aput-char v7, v6, v5

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 863
    :cond_e
    new-instance v5, Ljava/lang/String;

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    .line 959
    .end local v0    # "inputStream":Landroid/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    .line 960
    .local v0, "e":Ljava/io/IOException;
    :goto_d
    const-string v4, "ExifInterface"

    const-string v5, "IOException occurred during reading a value"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 961
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 6
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 966
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 967
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_9

    .line 970
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 971
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 973
    :cond_0
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 974
    move-object v1, v0

    check-cast v1, [J

    .line 975
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_1

    .line 976
    aget-wide v2, v1, v2

    long-to-double v2, v2

    return-wide v2

    .line 978
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 980
    .end local v1    # "array":[J
    :cond_2
    instance-of v1, v0, [I

    if-eqz v1, :cond_4

    .line 981
    move-object v1, v0

    check-cast v1, [I

    .line 982
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_3

    .line 983
    aget v2, v1, v2

    int-to-double v2, v2

    return-wide v2

    .line 985
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 987
    .end local v1    # "array":[I
    :cond_4
    instance-of v1, v0, [D

    if-eqz v1, :cond_6

    .line 988
    move-object v1, v0

    check-cast v1, [D

    .line 989
    .local v1, "array":[D
    array-length v5, v1

    if-ne v5, v4, :cond_5

    .line 990
    aget-wide v2, v1, v2

    return-wide v2

    .line 992
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 994
    .end local v1    # "array":[D
    :cond_6
    instance-of v1, v0, [Landroid/media/ExifInterface$Rational;

    if-eqz v1, :cond_8

    .line 995
    move-object v1, v0

    check-cast v1, [Landroid/media/ExifInterface$Rational;

    .line 996
    .local v1, "array":[Landroid/media/ExifInterface$Rational;
    array-length v5, v1

    if-ne v5, v4, :cond_7

    .line 997
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/media/ExifInterface$Rational;->calculate()D

    move-result-wide v2

    return-wide v2

    .line 999
    :cond_7
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1001
    .end local v1    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_8
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 968
    :cond_9
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getIntValue(Ljava/nio/ByteOrder;)I
    .locals 6
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 1005
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 1006
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 1009
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1010
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1012
    :cond_0
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 1013
    move-object v1, v0

    check-cast v1, [J

    .line 1014
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_1

    .line 1015
    aget-wide v2, v1, v2

    long-to-int v2, v2

    return v2

    .line 1017
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1019
    .end local v1    # "array":[J
    :cond_2
    instance-of v1, v0, [I

    if-eqz v1, :cond_4

    .line 1020
    move-object v1, v0

    check-cast v1, [I

    .line 1021
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_3

    .line 1022
    aget v2, v1, v2

    return v2

    .line 1024
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1026
    .end local v1    # "array":[I
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1007
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 7
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 1030
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 1031
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1032
    return-object v1

    .line 1034
    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1035
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1038
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v3, v0, [J

    const-string v4, ","

    if-eqz v3, :cond_4

    .line 1040
    move-object v1, v0

    check-cast v1, [J

    .line 1041
    .local v1, "array":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 1042
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1043
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_2

    .line 1044
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1047
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1049
    .end local v1    # "array":[J
    :cond_4
    instance-of v3, v0, [I

    if-eqz v3, :cond_7

    .line 1050
    move-object v1, v0

    check-cast v1, [I

    .line 1051
    .local v1, "array":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_6

    .line 1052
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1053
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_5

    .line 1054
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1057
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1059
    .end local v1    # "array":[I
    :cond_7
    instance-of v3, v0, [D

    if-eqz v3, :cond_a

    .line 1060
    move-object v1, v0

    check-cast v1, [D

    .line 1061
    .local v1, "array":[D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_9

    .line 1062
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1063
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_8

    .line 1064
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1067
    .end local v3    # "i":I
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1069
    .end local v1    # "array":[D
    :cond_a
    instance-of v3, v0, [Landroid/media/ExifInterface$Rational;

    if-eqz v3, :cond_d

    .line 1070
    move-object v1, v0

    check-cast v1, [Landroid/media/ExifInterface$Rational;

    .line 1071
    .local v1, "array":[Landroid/media/ExifInterface$Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_c

    .line 1072
    aget-object v5, v1, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1073
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    aget-object v5, v1, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1075
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_b

    .line 1076
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1079
    .end local v3    # "i":I
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1081
    .end local v1    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_d
    return-object v1
.end method

.method public greylist-max-o size()I
    .locals 2

    .line 1085
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_NAMES()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
