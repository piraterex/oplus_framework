.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEBUG:Z = false

.field protected static final blacklist END_STRING_FLAG:I = 0x0

.field private static final blacklist LENGTH_QUOTE:I = 0x1f

.field protected static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final blacklist LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final blacklist QUOTE:I = 0x7f

.field private static final blacklist QUOTED_STRING_FLAG:I = 0x22

.field private static final blacklist SHORT_INTEGER_MAX:I = 0x7f

.field private static final blacklist SHORT_LENGTH_MAX:I = 0x1e

.field protected static final blacklist TEXT_MAX:I = 0x7f

.field protected static final blacklist TEXT_MIN:I = 0x20

.field private static final blacklist THE_FIRST_PART:I = 0x0

.field private static final blacklist THE_LAST_PART:I = 0x1

.field protected static final blacklist TYPE_QUOTED_STRING:I = 0x1

.field protected static final blacklist TYPE_TEXT_STRING:I = 0x0

.field private static final blacklist TYPE_TOKEN_STRING:I = 0x2

.field protected static blacklist mStartParam:[B

.field protected static blacklist mTypeParam:[B


# instance fields
.field protected blacklist mBody:Lcom/google/android/mms/pdu/PduBody;

.field protected blacklist mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field protected final blacklist mParseContentDisposition:Z

.field protected blacklist mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    nop

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 90
    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void
.end method

.method public constructor greylist <init>([BZ)V
    .locals 1
    .param p1, "pduDataStream"    # [B
    .param p2, "parseContentDisposition"    # Z

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 72
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 78
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 114
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 115
    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    .line 116
    return-void
.end method

.method protected static blacklist checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 13
    .param p0, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 1832
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1833
    return v0

    .line 1837
    :cond_0
    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1840
    .local v1, "messageType":I
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v2

    .line 1841
    .local v2, "mmsVersion":I
    if-nez v2, :cond_1

    .line 1843
    return v0

    .line 1847
    :cond_1
    const/16 v3, 0x9b

    const/16 v4, 0x95

    const/16 v5, 0x84

    const/16 v6, 0x97

    const/16 v7, 0x8b

    const/16 v8, 0x89

    const/16 v9, 0x85

    const-wide/16 v10, -0x1

    const/16 v12, 0x98

    packed-switch v1, :pswitch_data_0

    .line 2036
    return v0

    .line 1978
    :pswitch_0
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 1979
    .local v4, "roDate":J
    cmp-long v9, v10, v4

    if-nez v9, :cond_2

    .line 1980
    return v0

    .line 1984
    :cond_2
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 1985
    .local v8, "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v8, :cond_3

    .line 1986
    return v0

    .line 1990
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v7

    .line 1991
    .local v7, "roMessageId":[B
    if-nez v7, :cond_4

    .line 1992
    return v0

    .line 1996
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 1997
    .local v3, "roReadStatus":I
    if-nez v3, :cond_5

    .line 1998
    return v0

    .line 2002
    :cond_5
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 2003
    .local v6, "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_15

    .line 2004
    return v0

    .line 2010
    .end local v3    # "roReadStatus":I
    .end local v4    # "roDate":J
    .end local v6    # "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v7    # "roMessageId":[B
    .end local v8    # "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 2011
    .local v4, "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_6

    .line 2012
    return v0

    .line 2016
    :cond_6
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 2017
    .local v5, "rrMessageId":[B
    if-nez v5, :cond_7

    .line 2018
    return v0

    .line 2022
    :cond_7
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 2023
    .local v3, "rrReadStatus":I
    if-nez v3, :cond_8

    .line 2024
    return v0

    .line 2028
    :cond_8
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 2029
    .local v6, "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_15

    .line 2030
    return v0

    .line 1944
    .end local v3    # "rrReadStatus":I
    .end local v4    # "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5    # "rrMessageId":[B
    .end local v6    # "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_2
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    .line 1945
    .local v8, "diDate":J
    cmp-long v3, v10, v8

    if-nez v3, :cond_9

    .line 1946
    return v0

    .line 1950
    :cond_9
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1951
    .local v3, "diMessageId":[B
    if-nez v3, :cond_a

    .line 1952
    return v0

    .line 1956
    :cond_a
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    .line 1957
    .local v4, "diStatus":I
    if-nez v4, :cond_b

    .line 1958
    return v0

    .line 1962
    :cond_b
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 1963
    .local v5, "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_15

    .line 1964
    return v0

    .line 1970
    .end local v3    # "diMessageId":[B
    .end local v4    # "diStatus":I
    .end local v5    # "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8    # "diDate":J
    :pswitch_3
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1971
    .local v3, "aiTransactionId":[B
    if-nez v3, :cond_15

    .line 1972
    return v0

    .line 1930
    .end local v3    # "aiTransactionId":[B
    :pswitch_4
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1931
    .local v3, "rcContentType":[B
    if-nez v3, :cond_c

    .line 1932
    return v0

    .line 1936
    :cond_c
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 1937
    .local v4, "rcDate":J
    cmp-long v6, v10, v4

    if-nez v6, :cond_15

    .line 1938
    return v0

    .line 1916
    .end local v3    # "rcContentType":[B
    .end local v4    # "rcDate":J
    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 1917
    .local v3, "nriStatus":I
    if-nez v3, :cond_d

    .line 1918
    return v0

    .line 1922
    :cond_d
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 1923
    .local v4, "nriTransactionId":[B
    if-nez v4, :cond_15

    .line 1924
    return v0

    .line 1884
    .end local v3    # "nriStatus":I
    .end local v4    # "nriTransactionId":[B
    :pswitch_6
    const/16 v3, 0x83

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1885
    .local v3, "niContentLocation":[B
    if-nez v3, :cond_e

    .line 1886
    return v0

    .line 1890
    :cond_e
    const/16 v4, 0x88

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 1891
    .local v4, "niExpiry":J
    cmp-long v6, v10, v4

    if-nez v6, :cond_f

    .line 1892
    return v0

    .line 1896
    :cond_f
    const/16 v6, 0x8a

    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v6

    .line 1897
    .local v6, "niMessageClass":[B
    if-nez v6, :cond_10

    .line 1898
    return v0

    .line 1902
    :cond_10
    const/16 v7, 0x8e

    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 1903
    .local v7, "niMessageSize":J
    cmp-long v9, v10, v7

    if-nez v9, :cond_11

    .line 1904
    return v0

    .line 1908
    :cond_11
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v9

    .line 1909
    .local v9, "niTransactionId":[B
    if-nez v9, :cond_15

    .line 1910
    return v0

    .line 1870
    .end local v3    # "niContentLocation":[B
    .end local v4    # "niExpiry":J
    .end local v6    # "niMessageClass":[B
    .end local v7    # "niMessageSize":J
    .end local v9    # "niTransactionId":[B
    :pswitch_7
    const/16 v3, 0x92

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 1871
    .local v3, "scResponseStatus":I
    if-nez v3, :cond_12

    .line 1872
    return v0

    .line 1876
    :cond_12
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 1877
    .local v4, "scTransactionId":[B
    if-nez v4, :cond_15

    .line 1878
    return v0

    .line 1850
    .end local v3    # "scResponseStatus":I
    .end local v4    # "scTransactionId":[B
    :pswitch_8
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1851
    .local v3, "srContentType":[B
    if-nez v3, :cond_13

    .line 1852
    return v0

    .line 1856
    :cond_13
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 1857
    .local v4, "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_14

    .line 1858
    return v0

    .line 1862
    :cond_14
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 1863
    .local v5, "srTransactionId":[B
    if-nez v5, :cond_15

    .line 1864
    return v0

    .line 2039
    .end local v3    # "srContentType":[B
    .end local v4    # "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5    # "srTransactionId":[B
    :cond_15
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 4
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .line 1793
    nop

    .line 1794
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_0

    .line 1796
    return v1

    .line 1800
    :cond_0
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1801
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1802
    .local v0, "contentId":[B
    if-eqz v0, :cond_1

    .line 1803
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1804
    return v3

    .line 1809
    :cond_1
    return v1

    .line 1813
    .end local v0    # "contentId":[B
    :cond_2
    if-eqz v0, :cond_3

    .line 1814
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    .line 1815
    .local v0, "contentType":[B
    if-eqz v0, :cond_3

    .line 1816
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1817
    return v3

    .line 1822
    .end local v0    # "contentType":[B
    :cond_3
    return v1
.end method

.method protected static blacklist extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1247
    nop

    .line 1248
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1249
    .local v0, "temp":I
    nop

    .line 1250
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static blacklist getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .line 1213
    nop

    .line 1214
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1215
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1216
    .local v1, "temp":I
    nop

    .line 1217
    :goto_0
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    if-eqz v1, :cond_2

    .line 1219
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 1220
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1221
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 1224
    :cond_0
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1225
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1229
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1230
    goto :goto_0

    .line 1233
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1234
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1237
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method protected static blacklist isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .line 1197
    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 1198
    :cond_1
    return v0

    .line 1201
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1208
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1205
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static blacklist isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .line 1153
    const/4 v0, 0x0

    const/16 v1, 0x21

    if-lt p0, v1, :cond_1

    const/16 v1, 0x7e

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 1157
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 1178
    const/4 v0, 0x1

    return v0

    .line 1175
    :sswitch_0
    return v0

    .line 1154
    :cond_1
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method protected static greylist log(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .line 970
    return-void
.end method

.method protected static blacklist parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 7
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1048
    nop

    .line 1049
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1050
    const/4 v0, 0x0

    .line 1051
    .local v0, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v1, 0x0

    .line 1052
    .local v1, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1053
    .local v2, "temp":I
    nop

    .line 1054
    and-int/lit16 v3, v2, 0xff

    .line 1055
    .local v3, "first":I
    if-nez v3, :cond_0

    .line 1056
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 1059
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1060
    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 1061
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1063
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1066
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1069
    .local v4, "textString":[B
    if-eqz v1, :cond_2

    .line 1070
    :try_start_0
    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    move-object v0, v5

    goto :goto_0

    .line 1072
    :cond_2
    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 1076
    :goto_0
    nop

    .line 1078
    return-object v0

    .line 1074
    :catch_0
    move-exception v5

    .line 1075
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    return-object v6
.end method

.method protected static blacklist parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1323
    nop

    .line 1324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1325
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1326
    .local v0, "temp":I
    nop

    .line 1327
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1328
    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    .line 1329
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 1331
    :cond_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected static blacklist parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 8
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1291
    nop

    .line 1292
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1293
    .local v0, "temp":I
    nop

    .line 1294
    and-int/lit16 v1, v0, 0xff

    .line 1296
    .local v1, "count":I
    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    .line 1300
    const-wide/16 v3, 0x0

    .line 1302
    .local v3, "result":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 1303
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1304
    nop

    .line 1305
    shl-long/2addr v3, v2

    .line 1306
    and-int/lit16 v6, v0, 0xff

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 1302
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1309
    .end local v5    # "i":I
    :cond_0
    return-wide v3

    .line 1297
    .end local v3    # "result":J
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static greylist parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1268
    nop

    .line 1269
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1270
    .local v0, "temp":I
    nop

    .line 1271
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static greylist parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 985
    nop

    .line 986
    const/4 v0, 0x0

    .line 987
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 988
    .local v1, "temp":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 989
    return v1

    .line 992
    :cond_0
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    .line 993
    shl-int/lit8 v0, v0, 0x7

    .line 994
    and-int/lit8 v3, v1, 0x7f

    or-int/2addr v0, v3

    .line 995
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 996
    if-ne v1, v2, :cond_0

    .line 997
    return v1

    .line 1001
    :cond_1
    shl-int/lit8 v0, v0, 0x7

    .line 1002
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 1004
    return v0
.end method

.method protected static greylist parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1023
    nop

    .line 1024
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1025
    .local v0, "temp":I
    nop

    .line 1026
    and-int/lit16 v1, v0, 0xff

    .line 1028
    .local v1, "first":I
    const/16 v2, 0x1e

    if-gt v1, v2, :cond_0

    .line 1029
    return v1

    .line 1030
    :cond_0
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    .line 1031
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    return v2

    .line 1034
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static greylist parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .line 1091
    nop

    .line 1109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1112
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1113
    .local v1, "temp":I
    nop

    .line 1114
    if-ne v0, p1, :cond_0

    const/16 v2, 0x22

    if-ne v2, v1, :cond_0

    .line 1117
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1118
    :cond_0
    if-nez p1, :cond_1

    const/16 v2, 0x7f

    if-ne v2, v1, :cond_1

    .line 1121
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1124
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1132
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .line 1343
    nop

    .line 1344
    new-array v0, p1, [B

    .line 1345
    .local v0, "area":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1346
    .local v1, "readLen":I
    if-ge v1, p1, :cond_0

    .line 1347
    const/4 v2, -0x1

    return v2

    .line 1349
    :cond_0
    return v1
.end method


# virtual methods
.method public greylist parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 7

    .line 126
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    return-object v1

    .line 131
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 132
    if-nez v0, :cond_1

    .line 134
    return-object v1

    .line 138
    :cond_1
    const/16 v2, 0x8c

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 141
    .local v0, "messageType":I
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 142
    const-string v2, "check mandatory headers failed!"

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 143
    return-object v1

    .line 146
    :cond_2
    const/16 v2, 0x80

    if-eq v2, v0, :cond_3

    const/16 v2, 0x84

    if-ne v2, v0, :cond_4

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 150
    if-nez v2, :cond_4

    .line 152
    return-object v1

    .line 156
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 240
    const-string v2, "Parser doesn\'t support this message type in this version!"

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 241
    return-object v1

    .line 229
    :pswitch_0
    new-instance v1, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 231
    .local v1, "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    return-object v1

    .line 236
    .end local v1    # "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_1
    new-instance v1, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 238
    .local v1, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    return-object v1

    .line 215
    .end local v1    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    :pswitch_2
    new-instance v1, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 217
    .local v1, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    return-object v1

    .line 222
    .end local v1    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_3
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 224
    .local v1, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    return-object v1

    .line 187
    .end local v1    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_4
    new-instance v2, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v2, v3, v4}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 190
    .local v2, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v3

    .line 191
    .local v3, "contentType":[B
    if-nez v3, :cond_5

    .line 192
    return-object v1

    .line 194
    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 195
    .local v4, "ctTypeStr":Ljava/lang/String;
    const-string v5, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 196
    const-string v5, "application/vnd.wap.multipart.related"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 197
    const-string v5, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_0

    .line 202
    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 205
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 206
    .local v1, "firstPart":Lcom/google/android/mms/pdu/PduPart;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 207
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6, v5, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 208
    return-object v2

    .line 210
    .end local v1    # "firstPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_7
    return-object v1

    .line 201
    :cond_8
    :goto_0
    return-object v2

    .line 180
    .end local v2    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v3    # "contentType":[B
    .end local v4    # "ctTypeStr":Ljava/lang/String;
    :pswitch_5
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 182
    .local v1, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    return-object v1

    .line 173
    .end local v1    # "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_6
    new-instance v1, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 175
    .local v1, "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    return-object v1

    .line 167
    .end local v1    # "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_7
    new-instance v1, Lcom/google/android/mms/pdu/SendConf;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 168
    .local v1, "sendConf":Lcom/google/android/mms/pdu/SendConf;
    return-object v1

    .line 161
    .end local v1    # "sendConf":Lcom/google/android/mms/pdu/SendConf;
    :pswitch_8
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v1, v2, v3}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 162
    .local v1, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected greylist parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1554
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 1556
    const/4 v0, 0x0

    .line 1557
    .local v0, "contentType":[B
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1558
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1559
    .local v2, "temp":I
    nop

    .line 1560
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1562
    and-int/lit16 v3, v2, 0xff

    .line 1564
    .local v3, "cur":I
    const/16 v4, 0x20

    const/16 v5, 0x7f

    const/4 v6, 0x0

    if-ge v3, v4, :cond_6

    .line 1565
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 1566
    .local v7, "length":I
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 1567
    .local v8, "startPos":I
    const-string v9, "PduParser"

    if-le v7, v8, :cond_0

    .line 1568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseContentType: Invalid length "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " when available bytes are "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 1572
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1573
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1574
    nop

    .line 1575
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1576
    and-int/lit16 v1, v2, 0xff

    .line 1578
    .local v1, "first":I
    if-lt v1, v4, :cond_1

    if-gt v1, v5, :cond_1

    .line 1579
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_1

    .line 1580
    :cond_1
    if-le v1, v5, :cond_5

    .line 1581
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1583
    .local v4, "index":I
    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 1584
    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1586
    :cond_2
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1587
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1589
    .end local v4    # "index":I
    :goto_0
    nop

    .line 1594
    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1595
    .local v4, "endPos":I
    sub-int v5, v8, v4

    sub-int v5, v7, v5

    .line 1596
    .local v5, "parameterLen":I
    if-lez v5, :cond_3

    .line 1597
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, p1, p2, v10}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1600
    :cond_3
    if-gez v5, :cond_4

    .line 1601
    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v6, v9, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    return-object v6

    .line 1604
    .end local v1    # "first":I
    .end local v4    # "endPos":I
    .end local v5    # "parameterLen":I
    .end local v7    # "length":I
    .end local v8    # "startPos":I
    :cond_4
    goto :goto_2

    .line 1590
    .restart local v1    # "first":I
    .restart local v7    # "length":I
    .restart local v8    # "startPos":I
    :cond_5
    const-string v4, "Corrupt content-type"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    sget-object v4, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4

    .line 1604
    .end local v1    # "first":I
    .end local v7    # "length":I
    .end local v8    # "startPos":I
    :cond_6
    if-gt v3, v5, :cond_7

    .line 1605
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_2

    .line 1607
    :cond_7
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .line 1608
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1611
    :goto_2
    return-object v0
.end method

.method protected blacklist parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 12
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p3, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1382
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 1383
    nop

    .line 1385
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1386
    .local v0, "startPos":I
    const/4 v1, 0x0

    .line 1387
    .local v1, "tempPos":I
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1388
    .local v2, "lastLen":I
    :goto_0
    const-string v3, "Corrupt Content-Type"

    const-string v4, "PduParser"

    if-lez v2, :cond_a

    .line 1389
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1390
    .local v5, "param":I
    nop

    .line 1391
    add-int/lit8 v2, v2, -0x1

    .line 1393
    const/16 v6, 0x7f

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v5, :sswitch_data_0

    .line 1524
    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v7, v6, :cond_9

    .line 1525
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1449
    :sswitch_0
    invoke-static {p1, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1450
    .local v3, "start":[B
    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 1451
    const/16 v4, 0x99

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1455
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1456
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    move v2, v4

    goto/16 :goto_4

    .line 1512
    .end local v3    # "start":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :sswitch_1
    invoke-static {p1, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1513
    .local v3, "name":[B
    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1514
    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    :cond_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1518
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1519
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto/16 :goto_4

    .line 1409
    .end local v3    # "name":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :sswitch_2
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1410
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 1411
    .local v3, "first":I
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1412
    const/16 v4, 0x83

    if-le v3, v6, :cond_3

    .line 1414
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 1416
    .local v6, "index":I
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 1417
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 1418
    .local v7, "type":[B
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    .end local v6    # "index":I
    .end local v7    # "type":[B
    :cond_2
    goto :goto_1

    .line 1424
    :cond_3
    invoke-static {p1, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1425
    .local v6, "type":[B
    if-eqz v6, :cond_4

    if-eqz p2, :cond_4

    .line 1426
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    .end local v6    # "type":[B
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1431
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1432
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto :goto_4

    .line 1473
    .end local v3    # "first":I
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :sswitch_3
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1474
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 1475
    .local v3, "firstValue":I
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1477
    const/16 v7, 0x20

    const/16 v9, 0x81

    if-le v3, v7, :cond_5

    if-lt v3, v6, :cond_6

    :cond_5
    if-nez v3, :cond_7

    .line 1480
    :cond_6
    invoke-static {p1, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1482
    .local v6, "charsetStr":[B
    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v7

    .line 1484
    .local v7, "charsetInt":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    nop

    .end local v7    # "charsetInt":I
    goto :goto_2

    .line 1485
    :catch_0
    move-exception v7

    .line 1487
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1488
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    .end local v6    # "charsetStr":[B
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    goto :goto_3

    .line 1492
    :cond_7
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    long-to-int v4, v6

    .line 1493
    .local v4, "charset":I
    if-eqz p2, :cond_8

    .line 1494
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    .end local v4    # "charset":I
    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1499
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1500
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    move v2, v4

    goto :goto_4

    .line 1527
    .end local v3    # "firstValue":I
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :cond_9
    const/4 v2, 0x0

    .line 1531
    .end local v5    # "param":I
    :goto_4
    goto/16 :goto_0

    .line 1533
    :cond_a
    if-eqz v2, :cond_b

    .line 1534
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_3
        0x83 -> :sswitch_2
        0x85 -> :sswitch_1
        0x89 -> :sswitch_2
        0x8a -> :sswitch_0
        0x97 -> :sswitch_1
        0x99 -> :sswitch_0
    .end sparse-switch
.end method

.method protected blacklist parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 17
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 252
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 253
    return-object v3

    .line 255
    :cond_0
    const/4 v0, 0x1

    .line 256
    .local v0, "keepParsing":Z
    new-instance v4, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    move v5, v0

    .line 258
    .end local v0    # "keepParsing":Z
    .local v4, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .local v5, "keepParsing":Z
    :goto_0
    if-eqz v5, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_11

    .line 259
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 260
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 262
    .local v6, "headerField":I
    const/16 v7, 0x20

    const/4 v8, 0x0

    if-lt v6, v7, :cond_1

    const/16 v7, 0x7f

    if-gt v6, v7, :cond_1

    .line 263
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 264
    invoke-static {v2, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 269
    .local v0, "bVal":[B
    goto :goto_0

    .line 271
    .end local v0    # "bVal":[B
    :cond_1
    const-string v9, "/"

    const-string v11, " is not Integer-Value"

    const-string v12, "is not Octet header field!"

    const-string v13, " into the header filed: "

    const-string v14, "Set invalid Octet value: "

    const/16 v15, 0x80

    const-string v8, "is not Text-String header field!"

    const-string v10, "is not Encoded-String-Value header field!"

    const-string v7, "is not Long-Integer header field!"

    const-string/jumbo v16, "null pointer error!"

    packed-switch v6, :pswitch_data_0

    .line 836
    :pswitch_0
    const-string v0, "Unknown header"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 791
    :pswitch_1
    invoke-virtual {v1, v2, v3}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    .line 795
    goto/16 :goto_13

    .line 382
    :pswitch_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v8

    .line 387
    .local v8, "value":J
    invoke-virtual {v4, v8, v9, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v8    # "value":J
    goto/16 :goto_13

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 390
    return-object v3

    .line 769
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 772
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 776
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 780
    goto/16 :goto_13

    .line 777
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 778
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 779
    return-object v3

    .line 747
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 750
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 753
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 757
    goto/16 :goto_13

    .line 709
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 713
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 717
    nop

    .line 721
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v8

    .line 726
    .local v8, "perviouslySentDate":J
    const/16 v0, 0xa1

    invoke-virtual {v4, v8, v9, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 731
    .end local v8    # "perviouslySentDate":J
    goto/16 :goto_13

    .line 728
    :catch_2
    move-exception v0

    .line 729
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 730
    return-object v3

    .line 714
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 715
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 716
    return-object v3

    .line 674
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 678
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 682
    nop

    .line 685
    nop

    .line 686
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 687
    .local v7, "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v7, :cond_10

    .line 693
    const/16 v0, 0xa0

    :try_start_5
    invoke-virtual {v4, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 700
    :goto_1
    goto/16 :goto_13

    .line 697
    :catch_4
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 698
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 699
    return-object v3

    .line 695
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 696
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 679
    .end local v7    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_6
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 680
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 681
    return-object v3

    .line 444
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_7
    nop

    .line 445
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 446
    .local v7, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v7, :cond_10

    .line 452
    :try_start_6
    invoke-virtual {v4, v7, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    .line 458
    :goto_2
    goto/16 :goto_13

    .line 455
    :catch_7
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 456
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 457
    return-object v3

    .line 453
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 454
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_2

    .line 651
    .end local v7    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 658
    .local v7, "version":I
    const/16 v0, 0x8d

    :try_start_7
    invoke-virtual {v4, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_7
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_9

    .line 666
    goto/16 :goto_13

    .line 663
    :catch_9
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 664
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 665
    return-object v3

    .line 659
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_a
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 660
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 662
    return-object v3

    .line 274
    .end local v0    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    .end local v7    # "version":I
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 278
    .local v7, "messageType":I
    packed-switch v7, :pswitch_data_1

    .line 298
    :try_start_8
    invoke-virtual {v4, v7, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_8
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_3

    .line 295
    :pswitch_a
    return-object v3

    .line 306
    :goto_3
    goto/16 :goto_13

    .line 303
    :catch_b
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 304
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 305
    return-object v3

    .line 299
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_c
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 300
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 302
    return-object v3

    .line 599
    .end local v0    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    .end local v7    # "messageType":I
    :pswitch_b
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 600
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 606
    .local v7, "messageClass":I
    const/16 v0, 0x8a

    if-lt v7, v15, :cond_6

    .line 609
    if-ne v15, v7, :cond_2

    .line 610
    :try_start_9
    const-string/jumbo v9, "personal"

    .line 611
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 610
    invoke-virtual {v4, v9, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_6

    .line 628
    :catch_d
    move-exception v0

    goto :goto_4

    .line 626
    :catch_e
    move-exception v0

    goto :goto_5

    .line 613
    :cond_2
    const/16 v9, 0x81

    if-ne v9, v7, :cond_3

    .line 614
    const-string v9, "advertisement"

    .line 615
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 614
    invoke-virtual {v4, v9, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_6

    .line 617
    :cond_3
    const/16 v9, 0x82

    if-ne v9, v7, :cond_4

    .line 618
    const-string v9, "informational"

    .line 619
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 618
    invoke-virtual {v4, v9, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_6

    .line 621
    :cond_4
    const/16 v9, 0x83

    if-ne v9, v7, :cond_5

    .line 622
    const-string v9, "auto"

    .line 623
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 622
    invoke-virtual {v4, v9, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_6

    .line 629
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 630
    return-object v3

    .line 627
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_5
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 631
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_5
    :goto_6
    goto/16 :goto_13

    .line 634
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 635
    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    .line 636
    .local v9, "messageClassString":[B
    if-eqz v9, :cond_7

    .line 638
    :try_start_a
    invoke-virtual {v4, v9, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_f

    .line 644
    :goto_7
    goto :goto_8

    .line 641
    :catch_f
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 642
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 643
    return-object v3

    .line 639
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_10
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 640
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_7

    .line 647
    .end local v9    # "messageClassString":[B
    :cond_7
    :goto_8
    goto/16 :goto_13

    .line 546
    .end local v7    # "messageClass":I
    :pswitch_c
    const/4 v7, 0x0

    .line 547
    .local v7, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 550
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 553
    .local v8, "fromToken":I
    if-ne v15, v8, :cond_a

    .line 555
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 556
    if-eqz v7, :cond_b

    .line 557
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v11

    .line 558
    .local v11, "address":[B
    if-eqz v11, :cond_9

    .line 559
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    .line 560
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 561
    .local v9, "endIndex":I
    if-lez v9, :cond_8

    .line 562
    const/4 v12, 0x0

    invoke-virtual {v0, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_9

    .line 561
    :cond_8
    move-object v12, v0

    .line 565
    .end local v0    # "str":Ljava/lang/String;
    .local v12, "str":Ljava/lang/String;
    :goto_9
    :try_start_b
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_11

    .line 569
    goto :goto_a

    .line 566
    :catch_11
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 568
    return-object v3

    .line 571
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "endIndex":I
    .end local v11    # "address":[B
    .end local v12    # "str":Ljava/lang/String;
    :cond_9
    :goto_a
    goto :goto_b

    .line 574
    :cond_a
    :try_start_c
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v9, "insert-address-token"

    .line 575
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_14

    move-object v7, v0

    .line 579
    nop

    .line 587
    :cond_b
    :goto_b
    const/16 v0, 0x89

    :try_start_d
    invoke-virtual {v4, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_12

    .line 593
    :goto_c
    goto/16 :goto_13

    .line 590
    :catch_12
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 591
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 592
    return-object v3

    .line 588
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_13
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 589
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_c

    .line 576
    :catch_14
    move-exception v0

    .line 577
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 578
    return-object v3

    .line 509
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8    # "fromToken":I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 512
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 517
    .local v8, "token":I
    :try_start_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v9
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_16

    .line 521
    .local v9, "timeValue":J
    nop

    .line 522
    const/16 v0, 0x81

    if-ne v0, v8, :cond_c

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    add-long/2addr v9, v11

    .line 533
    :cond_c
    :try_start_f
    invoke-virtual {v4, v9, v10, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_15

    .line 537
    goto/16 :goto_13

    .line 534
    :catch_15
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 535
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 536
    return-object v3

    .line 518
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "timeValue":J
    :catch_16
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 519
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 520
    return-object v3

    .line 338
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "token":I
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 345
    .local v7, "value":I
    :try_start_10
    invoke-virtual {v4, v7, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_10
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_10 .. :try_end_10} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_17

    .line 353
    goto/16 :goto_13

    .line 350
    :catch_17
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 351
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 352
    return-object v3

    .line 346
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_18
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 347
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 349
    return-object v3

    .line 363
    .end local v0    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    .end local v7    # "value":I
    :pswitch_f
    :try_start_11
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v8

    .line 368
    .local v8, "value":J
    invoke-virtual {v4, v8, v9, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_19

    .line 372
    .end local v8    # "value":J
    goto/16 :goto_13

    .line 369
    :catch_19
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 371
    return-object v3

    .line 799
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    .line 801
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 802
    invoke-virtual {v1, v2, v7}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v9

    .line 804
    .local v9, "contentType":[B
    if-eqz v9, :cond_d

    .line 810
    const/16 v0, 0x84

    :try_start_12
    invoke-virtual {v4, v9, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    .line 816
    :goto_d
    goto :goto_e

    .line 813
    :catch_1a
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 814
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 815
    return-object v3

    .line 811
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1b
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 812
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_d

    .line 820
    :cond_d
    :goto_e
    const/16 v0, 0x99

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 823
    const/16 v8, 0x83

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 825
    const/4 v0, 0x0

    .line 826
    .end local v5    # "keepParsing":Z
    .local v0, "keepParsing":Z
    move v5, v0

    goto/16 :goto_13

    .line 416
    .end local v0    # "keepParsing":Z
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v9    # "contentType":[B
    .restart local v5    # "keepParsing":Z
    :pswitch_11
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v7

    .line 417
    .local v7, "value":[B
    if-eqz v7, :cond_10

    .line 423
    :try_start_13
    invoke-virtual {v4, v7, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1c

    .line 429
    :goto_f
    goto/16 :goto_13

    .line 426
    :catch_1c
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 427
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 428
    return-object v3

    .line 424
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 425
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_f

    .line 468
    .end local v7    # "value":[B
    :pswitch_12
    nop

    .line 469
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 470
    .local v7, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v7, :cond_10

    .line 471
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v8

    .line 472
    .local v8, "address":[B
    if-eqz v8, :cond_f

    .line 473
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 478
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 479
    .local v9, "endIndex":I
    if-lez v9, :cond_e

    .line 480
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_10

    .line 479
    :cond_e
    move-object v11, v0

    .line 483
    .end local v0    # "str":Ljava/lang/String;
    .local v11, "str":Ljava/lang/String;
    :goto_10
    :try_start_14
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_1e

    .line 487
    goto :goto_11

    .line 484
    :catch_1e
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 486
    return-object v3

    .line 491
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "endIndex":I
    .end local v11    # "str":Ljava/lang/String;
    :cond_f
    :goto_11
    :try_start_15
    invoke-virtual {v4, v7, v6}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1f

    .line 497
    :goto_12
    goto :goto_13

    .line 494
    :catch_1f
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 495
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 496
    return-object v3

    .line 492
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_20
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 493
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_12

    .line 839
    .end local v6    # "headerField":I
    .end local v7    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8    # "address":[B
    :cond_10
    :goto_13
    goto/16 :goto_0

    .line 841
    :cond_11
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_7
        :pswitch_12
        :pswitch_11
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_11
        :pswitch_f
        :pswitch_6
        :pswitch_5
        :pswitch_e
        :pswitch_e
        :pswitch_4
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_0
        :pswitch_e
        :pswitch_3
        :pswitch_e
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_e
        :pswitch_1
        :pswitch_2
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method protected greylist parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 11
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p3, "length"    # I

    .line 1625
    nop

    .line 1626
    nop

    .line 1627
    nop

    .line 1645
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1646
    .local v0, "startPos":I
    const/4 v1, 0x0

    .line 1647
    .local v1, "tempPos":I
    move v2, p3

    .line 1648
    .local v2, "lastLen":I
    :goto_0
    const-string v3, "Corrupt Part headers"

    const-string v4, "PduParser"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_d

    .line 1649
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 1650
    .local v7, "header":I
    nop

    .line 1651
    add-int/lit8 v2, v2, -0x1

    .line 1653
    const/16 v8, 0x7f

    const/4 v9, -0x1

    if-le v7, v8, :cond_8

    .line 1655
    sparse-switch v7, :sswitch_data_0

    .line 1743
    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v5

    if-ne v9, v5, :cond_7

    .line 1744
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    return v6

    .line 1674
    :sswitch_0
    invoke-static {p1, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1675
    .local v3, "contentId":[B
    if-eqz v3, :cond_0

    .line 1676
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1679
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1680
    sub-int v4, v0, v1

    sub-int v2, p3, v4

    .line 1681
    goto/16 :goto_2

    .line 1697
    .end local v3    # "contentId":[B
    :sswitch_1
    iget-boolean v3, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    if-eqz v3, :cond_c

    .line 1698
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 1699
    .local v3, "len":I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1700
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1701
    .local v4, "thisStartPos":I
    const/4 v5, 0x0

    .line 1702
    .local v5, "thisEndPos":I
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1704
    .local v8, "value":I
    const/16 v9, 0x80

    if-ne v8, v9, :cond_1

    .line 1705
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    .line 1706
    :cond_1
    const/16 v9, 0x81

    if-ne v8, v9, :cond_2

    .line 1707
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    .line 1708
    :cond_2
    const/16 v9, 0x82

    if-ne v8, v9, :cond_3

    .line 1709
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    .line 1711
    :cond_3
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1713
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1718
    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 1719
    sub-int v9, v4, v5

    if-ge v9, v3, :cond_5

    .line 1720
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1721
    const/16 v9, 0x98

    if-ne v8, v9, :cond_4

    .line 1722
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1727
    :cond_4
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 1728
    sub-int v9, v4, v5

    if-ge v9, v3, :cond_5

    .line 1729
    sub-int v9, v4, v5

    sub-int v9, v3, v9

    .line 1730
    .local v9, "last":I
    new-array v10, v9, [B

    .line 1731
    .local v10, "temp":[B
    invoke-virtual {p1, v10, v6, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1735
    .end local v9    # "last":I
    .end local v10    # "temp":[B
    :cond_5
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1736
    sub-int v6, v0, v1

    sub-int v2, p3, v6

    .line 1737
    .end local v3    # "len":I
    .end local v4    # "thisStartPos":I
    .end local v5    # "thisEndPos":I
    .end local v8    # "value":I
    goto :goto_2

    .line 1661
    :sswitch_2
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1662
    .local v3, "contentLocation":[B
    if-eqz v3, :cond_6

    .line 1663
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1666
    :cond_6
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1667
    sub-int v4, v0, v1

    sub-int v2, p3, v4

    .line 1668
    goto :goto_2

    .line 1747
    .end local v3    # "contentLocation":[B
    :cond_7
    const/4 v2, 0x0

    .line 1748
    goto :goto_2

    .line 1750
    :cond_8
    const/16 v10, 0x20

    if-lt v7, v10, :cond_a

    if-gt v7, v8, :cond_a

    .line 1752
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1753
    .local v3, "tempHeader":[B
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1756
    .local v4, "tempValue":[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 1757
    const-string v8, "Content-Transfer-Encoding"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-ne v5, v6, :cond_9

    .line 1758
    invoke-virtual {p2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1761
    :cond_9
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1762
    sub-int v5, v0, v1

    sub-int v2, p3, v5

    .line 1763
    .end local v3    # "tempHeader":[B
    .end local v4    # "tempValue":[B
    goto :goto_2

    .line 1768
    :cond_a
    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v5

    if-ne v9, v5, :cond_b

    .line 1769
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    return v6

    .line 1772
    :cond_b
    const/4 v2, 0x0

    .line 1774
    .end local v7    # "header":I
    :cond_c
    :goto_2
    goto/16 :goto_0

    .line 1776
    :cond_d
    if-eqz v2, :cond_e

    .line 1777
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    return v6

    .line 1781
    :cond_e
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_2
        0xae -> :sswitch_1
        0xc0 -> :sswitch_0
        0xc5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected blacklist parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 20
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 851
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 852
    return-object v2

    .line 855
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 856
    .local v3, "count":I
    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 858
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_f

    .line 859
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 860
    .local v6, "headerLength":I
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 861
    .local v7, "dataLength":I
    new-instance v8, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 862
    .local v8, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    .line 863
    .local v9, "startPos":I
    if-gtz v9, :cond_1

    .line 865
    return-object v2

    .line 869
    :cond_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 870
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {v0, v1, v10}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v11

    .line 871
    .local v11, "contentType":[B
    const/4 v12, 0x0

    if-eqz v11, :cond_2

    .line 872
    invoke-virtual {v8, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_1

    .line 874
    :cond_2
    sget-object v13, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 878
    :goto_1
    const/16 v13, 0x97

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 879
    .local v13, "name":[B
    if-eqz v13, :cond_3

    .line 880
    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 884
    :cond_3
    const/16 v14, 0x81

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 885
    .local v14, "charset":Ljava/lang/Integer;
    if-eqz v14, :cond_4

    .line 886
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 890
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 891
    .local v15, "endPos":I
    sub-int v16, v9, v15

    sub-int v12, v6, v16

    .line 892
    .local v12, "partHeaderLen":I
    if-lez v12, :cond_5

    .line 893
    invoke-virtual {v0, v1, v8, v12}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v16

    if-nez v16, :cond_6

    .line 895
    return-object v2

    .line 897
    :cond_5
    if-gez v12, :cond_6

    .line 899
    return-object v2

    .line 905
    :cond_6
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v16

    if-nez v16, :cond_7

    .line 906
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v16

    if-nez v16, :cond_7

    .line 907
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v16

    if-nez v16, :cond_7

    .line 908
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v16

    if-nez v16, :cond_7

    .line 909
    nop

    .line 910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 909
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v16

    .line 910
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 909
    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 914
    :cond_7
    if-lez v7, :cond_d

    .line 915
    new-array v2, v7, [B

    .line 916
    .local v2, "partData":[B
    move/from16 v16, v3

    .end local v3    # "count":I
    .local v16, "count":I
    new-instance v3, Ljava/lang/String;

    move/from16 v18, v6

    .end local v6    # "headerLength":I
    .local v18, "headerLength":I
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 917
    .local v3, "partContentType":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 918
    const-string v6, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 920
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 922
    .local v6, "childBody":Lcom/google/android/mms/pdu/PduBody;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 923
    .end local v6    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    const/4 v0, 0x0

    goto :goto_3

    .line 925
    :cond_8
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v0

    .line 926
    .local v0, "partDataEncoding":[B
    if-eqz v0, :cond_a

    .line 927
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 928
    .local v6, "encoding":Ljava/lang/String;
    move-object/from16 v19, v0

    .end local v0    # "partDataEncoding":[B
    .local v19, "partDataEncoding":[B
    const-string v0, "base64"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 930
    invoke-static {v2}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v2

    goto :goto_2

    .line 931
    :cond_9
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 933
    invoke-static {v2}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v2

    goto :goto_2

    .line 926
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v19    # "partDataEncoding":[B
    .restart local v0    # "partDataEncoding":[B
    :cond_a
    move-object/from16 v19, v0

    .line 938
    .end local v0    # "partDataEncoding":[B
    .restart local v19    # "partDataEncoding":[B
    :cond_b
    :goto_2
    if-nez v2, :cond_c

    .line 939
    const-string v0, "Decode part data error!"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 940
    const/4 v0, 0x0

    return-object v0

    .line 942
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_3

    .line 914
    .end local v2    # "partData":[B
    .end local v16    # "count":I
    .end local v18    # "headerLength":I
    .end local v19    # "partDataEncoding":[B
    .local v3, "count":I
    .local v6, "headerLength":I
    :cond_d
    move/from16 v16, v3

    move/from16 v18, v6

    const/4 v0, 0x0

    .line 947
    .end local v3    # "count":I
    .end local v6    # "headerLength":I
    .restart local v16    # "count":I
    .restart local v18    # "headerLength":I
    :goto_3
    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v2

    if-nez v2, :cond_e

    .line 949
    const/4 v2, 0x0

    invoke-virtual {v4, v2, v8}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto :goto_4

    .line 952
    :cond_e
    invoke-virtual {v4, v8}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 858
    .end local v7    # "dataLength":I
    .end local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v9    # "startPos":I
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v11    # "contentType":[B
    .end local v12    # "partHeaderLen":I
    .end local v13    # "name":[B
    .end local v14    # "charset":Ljava/lang/Integer;
    .end local v15    # "endPos":I
    .end local v18    # "headerLength":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object v2, v0

    move/from16 v3, v16

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 956
    .end local v5    # "i":I
    .end local v16    # "count":I
    .restart local v3    # "count":I
    :cond_f
    return-object v4
.end method
