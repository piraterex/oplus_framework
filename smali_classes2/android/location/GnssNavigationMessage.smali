.class public final Landroid/location/GnssNavigationMessage;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessage$Callback;,
        Landroid/location/GnssNavigationMessage$GnssNavigationMessageStatus;,
        Landroid/location/GnssNavigationMessage$GnssNavigationMessageType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EMPTY_ARRAY:[B

.field public static final whitelist STATUS_PARITY_PASSED:I = 0x1

.field public static final whitelist STATUS_PARITY_REBUILT:I = 0x2

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field public static final whitelist TYPE_BDS_CNAV1:I = 0x503

.field public static final whitelist TYPE_BDS_CNAV2:I = 0x504

.field public static final whitelist TYPE_BDS_D1:I = 0x501

.field public static final whitelist TYPE_BDS_D2:I = 0x502

.field public static final whitelist TYPE_GAL_F:I = 0x602

.field public static final whitelist TYPE_GAL_I:I = 0x601

.field public static final whitelist TYPE_GLO_L1CA:I = 0x301

.field public static final whitelist TYPE_GPS_CNAV2:I = 0x104

.field public static final whitelist TYPE_GPS_L1CA:I = 0x101

.field public static final whitelist TYPE_GPS_L2CNAV:I = 0x102

.field public static final whitelist TYPE_GPS_L5CNAV:I = 0x103

.field public static final whitelist TYPE_IRN_L5CA:I = 0x701

.field public static final whitelist TYPE_QZS_L1CA:I = 0x401

.field public static final whitelist TYPE_SBS:I = 0x201

.field public static final whitelist TYPE_UNKNOWN:I


# instance fields
.field private greylist-max-o mData:[B

.field private greylist-max-o mMessageId:I

.field private greylist-max-o mStatus:I

.field private greylist-max-o mSubmessageId:I

.field private greylist-max-o mSvid:I

.field private greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    .line 440
    new-instance v0, Landroid/location/GnssNavigationMessage$1;

    invoke-direct {v0}, Landroid/location/GnssNavigationMessage$1;-><init>()V

    sput-object v0, Landroid/location/GnssNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    .line 180
    return-void
.end method

.method private greylist-max-o getStatusString()Ljava/lang/String;
    .locals 2

    .line 428
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 434
    :pswitch_0
    const-string v0, "ParityRebuilt"

    return-object v0

    .line 432
    :pswitch_1
    const-string v0, "ParityPassed"

    return-object v0

    .line 430
    :pswitch_2
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o getTypeString()Ljava/lang/String;
    .locals 2

    .line 227
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :sswitch_0
    const-string v0, "IRNSS L5 C/A"

    return-object v0

    .line 255
    :sswitch_1
    const-string v0, "Galileo F"

    return-object v0

    .line 253
    :sswitch_2
    const-string v0, "Galileo I"

    return-object v0

    .line 251
    :sswitch_3
    const-string v0, "Beidou CNAV2"

    return-object v0

    .line 249
    :sswitch_4
    const-string v0, "Beidou CNAV1"

    return-object v0

    .line 247
    :sswitch_5
    const-string v0, "Beidou D2"

    return-object v0

    .line 245
    :sswitch_6
    const-string v0, "Beidou D1"

    return-object v0

    .line 243
    :sswitch_7
    const-string v0, "QZSS L1 C/A"

    return-object v0

    .line 241
    :sswitch_8
    const-string v0, "Glonass L1 C/A"

    return-object v0

    .line 239
    :sswitch_9
    const-string v0, "SBS"

    return-object v0

    .line 237
    :sswitch_a
    const-string v0, "GPS CNAV2"

    return-object v0

    .line 235
    :sswitch_b
    const-string v0, "GPS L5-CNAV"

    return-object v0

    .line 233
    :sswitch_c
    const-string v0, "GPS L2-CNAV"

    return-object v0

    .line 231
    :sswitch_d
    const-string v0, "GPS L1 C/A"

    return-object v0

    .line 229
    :sswitch_e
    const-string v0, "Unknown"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x101 -> :sswitch_d
        0x102 -> :sswitch_c
        0x103 -> :sswitch_b
        0x104 -> :sswitch_a
        0x201 -> :sswitch_9
        0x301 -> :sswitch_8
        0x401 -> :sswitch_7
        0x501 -> :sswitch_6
        0x502 -> :sswitch_5
        0x503 -> :sswitch_4
        0x504 -> :sswitch_3
        0x601 -> :sswitch_2
        0x602 -> :sswitch_1
        0x701 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o initialize()V
    .locals 2

    .line 505
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 506
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 507
    const/4 v1, -0x1

    iput v1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 508
    iput v1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 509
    sget-object v1, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    iput-object v1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 510
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 511
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getData()[B
    .locals 1

    .line 390
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    return-object v0
.end method

.method public whitelist getMessageId()I
    .locals 1

    .line 313
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return v0
.end method

.method public whitelist getStatus()I
    .locals 1

    .line 411
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return v0
.end method

.method public whitelist getSubmessageId()I
    .locals 1

    .line 348
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return v0
.end method

.method public whitelist getSvid()I
    .locals 1

    .line 270
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 210
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return v0
.end method

.method public blacklist reset()V
    .locals 0

    .line 202
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    .line 203
    return-void
.end method

.method public blacklist set(Landroid/location/GnssNavigationMessage;)V
    .locals 1
    .param p1, "navigationMessage"    # Landroid/location/GnssNavigationMessage;

    .line 188
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mType:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 189
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSvid:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 190
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 191
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 192
    iget-object v0, p1, Landroid/location/GnssNavigationMessage;->mData:[B

    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 193
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mStatus:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 194
    return-void
.end method

.method public blacklist setData([B)V
    .locals 2
    .param p1, "value"    # [B

    .line 399
    if-eqz p1, :cond_0

    .line 403
    iput-object p1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 404
    return-void

    .line 400
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Data must be a non-null array"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMessageId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 322
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 323
    return-void
.end method

.method public blacklist setStatus(I)V
    .locals 0
    .param p1, "value"    # I

    .line 420
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 421
    return-void
.end method

.method public blacklist setSubmessageId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 357
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 358
    return-void
.end method

.method public blacklist setSvid(I)V
    .locals 0
    .param p1, "value"    # I

    .line 279
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 280
    return-void
.end method

.method public blacklist setType(I)V
    .locals 0
    .param p1, "value"    # I

    .line 219
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 220
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    .line 483
    const-string v0, "   %-15s = %s\n"

    .line 484
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GnssNavigationMessage:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Type"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getTypeString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "   %-15s = %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "Svid"

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "Status"

    aput-object v7, v3, v5

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getStatusString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "MessageId"

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "SubmessageId"

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Data"

    aput-object v3, v2, v5

    const-string/jumbo v3, "{"

    aput-object v3, v2, v6

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string v2, "        "

    .line 494
    .local v2, "prefix":Ljava/lang/String;
    iget-object v3, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v4, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget-byte v6, v3, v5

    .line 495
    .local v6, "value":B
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    const-string v2, ", "

    .line 494
    .end local v6    # "value":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 499
    :cond_0
    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 467
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 473
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    return-void
.end method
