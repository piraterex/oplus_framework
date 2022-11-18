.class public final Landroid/telephony/SmsCbMessage;
.super Ljava/lang/Object;
.source "SmsCbMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbMessage$MessagePriority;,
        Landroid/telephony/SmsCbMessage$MessageFormat;,
        Landroid/telephony/SmsCbMessage$GeographicalScope;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GEOGRAPHICAL_SCOPE_CELL_WIDE:I = 0x3

.field public static final whitelist GEOGRAPHICAL_SCOPE_CELL_WIDE_IMMEDIATE:I = 0x0

.field public static final whitelist GEOGRAPHICAL_SCOPE_LOCATION_AREA_WIDE:I = 0x2

.field public static final whitelist GEOGRAPHICAL_SCOPE_PLMN_WIDE:I = 0x1

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "SMSCB"

.field public static final whitelist MAXIMUM_WAIT_TIME_NOT_SET:I = 0xff

.field public static final whitelist MESSAGE_FORMAT_3GPP:I = 0x1

.field public static final whitelist MESSAGE_FORMAT_3GPP2:I = 0x2

.field public static final whitelist MESSAGE_PRIORITY_EMERGENCY:I = 0x3

.field public static final whitelist MESSAGE_PRIORITY_INTERACTIVE:I = 0x1

.field public static final whitelist MESSAGE_PRIORITY_NORMAL:I = 0x0

.field public static final whitelist MESSAGE_PRIORITY_URGENT:I = 0x2


# instance fields
.field private final greylist-max-o mBody:Ljava/lang/String;

.field private final greylist-max-o mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final blacklist mDataCodingScheme:I

.field private final greylist-max-o mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final greylist-max-o mGeographicalScope:I

.field private final blacklist mGeometries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLanguage:Ljava/lang/String;

.field private final greylist-max-o mLocation:Landroid/telephony/SmsCbLocation;

.field private final blacklist mMaximumWaitTimeSec:I

.field private final greylist-max-o mMessageFormat:I

.field private final greylist-max-o mPriority:I

.field private final blacklist mReceivedTimeMillis:J

.field private final greylist-max-o mSerialNumber:I

.field private final greylist-max-o mServiceCategory:I

.field private final blacklist mSlotIndex:I

.field private final blacklist mSubId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 337
    new-instance v0, Landroid/telephony/SmsCbMessage$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;ILjava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;JII)V
    .locals 16
    .param p1, "messageFormat"    # I
    .param p2, "geographicalScope"    # I
    .param p3, "serialNumber"    # I
    .param p4, "location"    # Landroid/telephony/SmsCbLocation;
    .param p5, "serviceCategory"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "dataCodingScheme"    # I
    .param p8, "body"    # Ljava/lang/String;
    .param p9, "priority"    # I
    .param p10, "etwsWarningInfo"    # Landroid/telephony/SmsCbEtwsInfo;
    .param p11, "cmasWarningInfo"    # Landroid/telephony/SmsCbCmasInfo;
    .param p12, "maximumWaitTimeSec"    # I
    .param p14, "receivedTimeMillis"    # J
    .param p16, "slotIndex"    # I
    .param p17, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/telephony/SmsCbLocation;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telephony/SmsCbEtwsInfo;",
            "Landroid/telephony/SmsCbCmasInfo;",
            "I",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;JII)V"
        }
    .end annotation

    .line 240
    .local p13, "geometries":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CbGeoUtils$Geometry;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    move/from16 v1, p1

    iput v1, v0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    .line 242
    move/from16 v2, p2

    iput v2, v0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    .line 243
    move/from16 v3, p3

    iput v3, v0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    .line 244
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    .line 245
    move/from16 v5, p5

    iput v5, v0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    .line 246
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 247
    move/from16 v7, p7

    iput v7, v0, Landroid/telephony/SmsCbMessage;->mDataCodingScheme:I

    .line 248
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 249
    move/from16 v9, p9

    iput v9, v0, Landroid/telephony/SmsCbMessage;->mPriority:I

    .line 250
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 251
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 252
    move-wide/from16 v12, p14

    iput-wide v12, v0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    .line 253
    move-object/from16 v14, p13

    iput-object v14, v0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    .line 254
    move/from16 v15, p12

    iput v15, v0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    .line 255
    move/from16 v1, p16

    iput v1, v0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    .line 256
    move/from16 v1, p17

    iput v1, v0, Landroid/telephony/SmsCbMessage;->mSubId:I

    .line 257
    return-void
.end method

.method public constructor blacklist <init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;II)V
    .locals 18
    .param p1, "messageFormat"    # I
    .param p2, "geographicalScope"    # I
    .param p3, "serialNumber"    # I
    .param p4, "location"    # Landroid/telephony/SmsCbLocation;
    .param p5, "serviceCategory"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "body"    # Ljava/lang/String;
    .param p8, "priority"    # I
    .param p9, "etwsWarningInfo"    # Landroid/telephony/SmsCbEtwsInfo;
    .param p10, "cmasWarningInfo"    # Landroid/telephony/SmsCbCmasInfo;
    .param p11, "slotIndex"    # I
    .param p12, "subId"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v16, p11

    move/from16 v17, p12

    .line 225
    nop

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 225
    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;ILjava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;JII)V

    .line 228
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    .line 267
    new-instance v0, Landroid/telephony/SmsCbLocation;

    invoke-direct {v0, p1}, Landroid/telephony/SmsCbLocation;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mDataCodingScheme:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .local v0, "type":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 288
    :pswitch_0
    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 289
    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_0

    .line 277
    :pswitch_1
    new-instance v2, Landroid/telephony/SmsCbEtwsInfo;

    invoke-direct {v2, p1}, Landroid/telephony/SmsCbEtwsInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 278
    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 279
    goto :goto_0

    .line 283
    :pswitch_2
    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 284
    new-instance v2, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct {v2, p1}, Landroid/telephony/SmsCbCmasInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 285
    nop

    .line 291
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "geoStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/telephony/CbGeoUtils;->parseGeometriesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mSubId:I

    .line 297
    return-void

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist createFromCursor(Landroid/database/Cursor;)Landroid/telephony/SmsCbMessage;
    .locals 44
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 631
    move-object/from16 v0, p0

    .line 632
    const-string v1, "geo_scope"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 631
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 633
    .local v1, "geoScope":I
    const-string/jumbo v2, "serial_number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 634
    .local v20, "serialNum":I
    const-string/jumbo v2, "service_category"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 635
    .local v21, "category":I
    nop

    .line 636
    const-string/jumbo v2, "language"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 635
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 637
    .local v22, "language":Ljava/lang/String;
    const-string v2, "body"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 638
    .local v23, "body":Ljava/lang/String;
    const-string v2, "format"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 639
    .local v24, "format":I
    const-string/jumbo v2, "priority"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 640
    .local v25, "priority":I
    const-string/jumbo v2, "slot_index"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 641
    .local v26, "slotIndex":I
    const-string/jumbo v2, "sub_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 644
    .local v27, "subId":I
    const-string/jumbo v2, "plmn"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 645
    .local v13, "plmnColumn":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 646
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    .local v3, "plmn":Ljava/lang/String;
    goto :goto_0

    .line 648
    .end local v3    # "plmn":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    move-object v12, v3

    .line 652
    .local v12, "plmn":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "lac"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 653
    .local v11, "lacColumn":I
    if-eq v11, v2, :cond_1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 654
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v10, v3

    .local v3, "lac":I
    goto :goto_1

    .line 656
    .end local v3    # "lac":I
    :cond_1
    const/4 v3, -0x1

    move v10, v3

    .line 660
    .local v10, "lac":I
    :goto_1
    const-string v3, "cid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 661
    .local v8, "cidColumn":I
    if-eq v8, v2, :cond_2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 662
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v7, v3

    .local v3, "cid":I
    goto :goto_2

    .line 664
    .end local v3    # "cid":I
    :cond_2
    const/4 v3, -0x1

    move v7, v3

    .line 667
    .local v7, "cid":I
    :goto_2
    new-instance v6, Landroid/telephony/SmsCbLocation;

    invoke-direct {v6, v12, v10, v7}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 670
    .local v6, "location":Landroid/telephony/SmsCbLocation;
    const-string v3, "etws_warning_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 671
    .local v5, "etwsWarningTypeColumn":I
    const-string v3, "etws_is_primary"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 672
    .local v4, "etwsIsPrimaryColumn":I
    if-eq v5, v2, :cond_4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eq v4, v2, :cond_4

    .line 673
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 674
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 675
    .local v3, "warningType":I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    move/from16 v18, v9

    .line 676
    .local v18, "isPrimary":Z
    new-instance v9, Landroid/telephony/SmsCbEtwsInfo;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v14, v9

    move v15, v3

    invoke-direct/range {v14 .. v19}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    move-object v3, v9

    .line 677
    .end local v18    # "isPrimary":Z
    .local v3, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    move-object/from16 v28, v3

    goto :goto_4

    .line 678
    .end local v3    # "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v28, v3

    .line 681
    .local v28, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    :goto_4
    const/4 v3, 0x0

    .line 682
    .local v3, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    const-string v9, "cmas_message_class"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 683
    .local v9, "cmasMessageClassColumn":I
    if-eq v9, v2, :cond_a

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_a

    .line 684
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 687
    .local v14, "messageClass":I
    const-string v15, "cmas_category"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 688
    .local v15, "cmasCategoryColumn":I
    if-eq v15, v2, :cond_5

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_5

    .line 689
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .local v16, "cmasCategory":I
    goto :goto_5

    .line 691
    .end local v16    # "cmasCategory":I
    :cond_5
    const/16 v16, -0x1

    .line 695
    .restart local v16    # "cmasCategory":I
    :goto_5
    const-string v2, "cmas_response_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 696
    .local v2, "cmasResponseTypeColumn":I
    move-object/from16 v18, v3

    const/4 v3, -0x1

    .end local v3    # "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .local v18, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    if-eq v2, v3, :cond_6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 697
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .local v3, "responseType":I
    goto :goto_6

    .line 699
    .end local v3    # "responseType":I
    :cond_6
    const/4 v3, -0x1

    .line 703
    .restart local v3    # "responseType":I
    :goto_6
    move/from16 v19, v2

    .end local v2    # "cmasResponseTypeColumn":I
    .local v19, "cmasResponseTypeColumn":I
    const-string v2, "cmas_severity"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 704
    .local v2, "cmasSeverityColumn":I
    move/from16 v36, v4

    const/4 v4, -0x1

    .end local v4    # "etwsIsPrimaryColumn":I
    .local v36, "etwsIsPrimaryColumn":I
    if-eq v2, v4, :cond_7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 705
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .local v4, "severity":I
    goto :goto_7

    .line 707
    .end local v4    # "severity":I
    :cond_7
    const/4 v4, -0x1

    .line 711
    .restart local v4    # "severity":I
    :goto_7
    move/from16 v37, v2

    .end local v2    # "cmasSeverityColumn":I
    .local v37, "cmasSeverityColumn":I
    const-string v2, "cmas_urgency"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 712
    .local v2, "cmasUrgencyColumn":I
    move/from16 v38, v5

    const/4 v5, -0x1

    .end local v5    # "etwsWarningTypeColumn":I
    .local v38, "etwsWarningTypeColumn":I
    if-eq v2, v5, :cond_8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 713
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .local v5, "urgency":I
    goto :goto_8

    .line 715
    .end local v5    # "urgency":I
    :cond_8
    const/4 v5, -0x1

    .line 719
    .restart local v5    # "urgency":I
    :goto_8
    move/from16 v39, v2

    .end local v2    # "cmasUrgencyColumn":I
    .local v39, "cmasUrgencyColumn":I
    const-string v2, "cmas_certainty"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 720
    .local v2, "cmasCertaintyColumn":I
    move/from16 v40, v7

    const/4 v7, -0x1

    .end local v7    # "cid":I
    .local v40, "cid":I
    if-eq v2, v7, :cond_9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 721
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .local v7, "certainty":I
    goto :goto_9

    .line 723
    .end local v7    # "certainty":I
    :cond_9
    const/4 v7, -0x1

    .line 726
    .restart local v7    # "certainty":I
    :goto_9
    new-instance v17, Landroid/telephony/SmsCbCmasInfo;

    move-object/from16 v29, v17

    move/from16 v30, v14

    move/from16 v31, v16

    move/from16 v32, v3

    move/from16 v33, v4

    move/from16 v34, v5

    move/from16 v35, v7

    invoke-direct/range {v29 .. v35}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    .end local v18    # "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .local v17, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    goto :goto_a

    .line 683
    .end local v2    # "cmasCertaintyColumn":I
    .end local v14    # "messageClass":I
    .end local v15    # "cmasCategoryColumn":I
    .end local v16    # "cmasCategory":I
    .end local v17    # "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .end local v19    # "cmasResponseTypeColumn":I
    .end local v36    # "etwsIsPrimaryColumn":I
    .end local v37    # "cmasSeverityColumn":I
    .end local v38    # "etwsWarningTypeColumn":I
    .end local v39    # "cmasUrgencyColumn":I
    .end local v40    # "cid":I
    .local v3, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .local v4, "etwsIsPrimaryColumn":I
    .local v5, "etwsWarningTypeColumn":I
    .local v7, "cid":I
    :cond_a
    move-object/from16 v18, v3

    move/from16 v36, v4

    move/from16 v38, v5

    move/from16 v40, v7

    .line 730
    .end local v3    # "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .end local v4    # "etwsIsPrimaryColumn":I
    .end local v5    # "etwsWarningTypeColumn":I
    .end local v7    # "cid":I
    .restart local v18    # "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .restart local v36    # "etwsIsPrimaryColumn":I
    .restart local v38    # "etwsWarningTypeColumn":I
    .restart local v40    # "cid":I
    move-object/from16 v29, v18

    .end local v18    # "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    .local v29, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    :goto_a
    const-string v2, "geometries"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 732
    .local v30, "geoStr":Ljava/lang/String;
    if-eqz v30, :cond_b

    invoke-static/range {v30 .. v30}, Landroid/telephony/CbGeoUtils;->parseGeometriesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    move-object v15, v2

    .line 734
    .local v15, "geometries":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CbGeoUtils$Geometry;>;"
    nop

    .line 735
    const-string/jumbo v2, "received_time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 734
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .local v31, "receivedTimeMillis":J
    move-wide/from16 v16, v31

    .line 737
    nop

    .line 738
    const-string/jumbo v2, "maximum_wait_time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 737
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .local v33, "maximumWaitTimeSec":I
    move/from16 v14, v33

    .line 740
    new-instance v34, Landroid/telephony/SmsCbMessage;

    move-object/from16 v2, v34

    const/4 v3, 0x0

    move/from16 v35, v9

    .end local v9    # "cmasMessageClassColumn":I
    .local v35, "cmasMessageClassColumn":I
    move v9, v3

    move/from16 v3, v24

    move v4, v1

    move/from16 v37, v38

    .end local v38    # "etwsWarningTypeColumn":I
    .local v37, "etwsWarningTypeColumn":I
    move/from16 v5, v20

    move/from16 v38, v40

    .end local v40    # "cid":I
    .local v38, "cid":I
    move/from16 v7, v21

    move/from16 v39, v8

    .end local v8    # "cidColumn":I
    .local v39, "cidColumn":I
    move-object/from16 v8, v22

    move/from16 v40, v10

    .end local v10    # "lac":I
    .local v40, "lac":I
    move-object/from16 v10, v23

    move/from16 v41, v11

    .end local v11    # "lacColumn":I
    .local v41, "lacColumn":I
    move/from16 v11, v25

    move-object/from16 v42, v12

    .end local v12    # "plmn":Ljava/lang/String;
    .local v42, "plmn":Ljava/lang/String;
    move-object/from16 v12, v28

    move/from16 v43, v13

    .end local v13    # "plmnColumn":I
    .local v43, "plmnColumn":I
    move-object/from16 v13, v29

    move/from16 v18, v26

    move/from16 v19, v27

    invoke-direct/range {v2 .. v19}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;ILjava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;ILjava/util/List;JII)V

    return-object v34
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    .line 516
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method public whitelist getContentValues()Landroid/content/ContentValues;
    .locals 6

    .line 573
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 574
    .local v0, "cv":Landroid/content/ContentValues;
    iget v1, p0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "slot_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    iget v1, p0, Landroid/telephony/SmsCbMessage;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    iget v1, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "geo_scope"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "plmn"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 581
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "lac"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    :cond_1
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 584
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "serial_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "service_category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "language"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getDataCodingScheme()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dcs"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessagePriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v1

    .line 595
    .local v1, "etwsInfo":Landroid/telephony/SmsCbEtwsInfo;
    if-eqz v1, :cond_3

    .line 596
    invoke-virtual {v1}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "etws_warning_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    invoke-virtual {v1}, Landroid/telephony/SmsCbEtwsInfo;->isPrimary()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "etws_is_primary"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 600
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v2

    .line 601
    .local v2, "cmasInfo":Landroid/telephony/SmsCbCmasInfo;
    if-eqz v2, :cond_4

    .line 602
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_message_class"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getCategory()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_category"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getResponseType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_response_type"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getSeverity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_severity"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getUrgency()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_urgency"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->getCertainty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cmas_certainty"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    :cond_4
    iget-wide v3, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "received_time"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 612
    iget-object v3, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    const-string v4, "geometries"

    if-eqz v3, :cond_5

    .line 613
    invoke-static {v3}, Landroid/telephony/CbGeoUtils;->encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_5
    const/4 v3, 0x0

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :goto_0
    iget v3, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "maximum_wait_time"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    return-object v0
.end method

.method public whitelist getDataCodingScheme()I
    .locals 1

    .line 412
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mDataCodingScheme:I

    return v0
.end method

.method public whitelist getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    .line 501
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method public whitelist getGeographicalScope()I
    .locals 1

    .line 356
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    return v0
.end method

.method public whitelist getGeometries()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 437
    :cond_0
    return-object v0
.end method

.method public whitelist getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocation()Landroid/telephony/SmsCbLocation;
    .locals 1

    .line 381
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    return-object v0
.end method

.method public whitelist getMaximumWaitingDuration()I
    .locals 1

    .line 445
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    return v0
.end method

.method public whitelist getMessageBody()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMessageFormat()I
    .locals 1

    .line 477
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    return v0
.end method

.method public whitelist getMessagePriority()I
    .locals 1

    .line 487
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    return v0
.end method

.method public whitelist getReceivedTime()J
    .locals 2

    .line 453
    iget-wide v0, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    return-wide v0
.end method

.method public whitelist getSerialNumber()I
    .locals 1

    .line 367
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    return v0
.end method

.method public whitelist getServiceCategory()I
    .locals 1

    .line 393
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    return v0
.end method

.method public whitelist getSlotIndex()I
    .locals 1

    .line 461
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    return v0
.end method

.method public whitelist getSubscriptionId()I
    .locals 1

    .line 469
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSubId:I

    return v0
.end method

.method public whitelist isCmasMessage()Z
    .locals 1

    .line 540
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEmergencyMessage()Z
    .locals 2

    .line 524
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEtwsMessage()Z
    .locals 1

    .line 532
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist needGeoFencingCheck()Z
    .locals 1

    .line 749
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbMessage{geographicalScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 549
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    const-string v2, ", "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    invoke-virtual {v4}, Landroid/telephony/SmsCbEtwsInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maximumWaitingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", received time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slotIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 554
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 555
    invoke-static {v1}, Landroid/telephony/CbGeoUtils;->encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 307
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbLocation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 311
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mDataCodingScheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_0

    .line 318
    const/16 v0, 0x45

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbEtwsInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_1

    .line 322
    const/16 v0, 0x43

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbCmasInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 326
    :cond_1
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    :goto_0
    iget-wide v0, p0, Landroid/telephony/SmsCbMessage;->mReceivedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 329
    nop

    .line 330
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mGeometries:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/telephony/CbGeoUtils;->encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 329
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMaximumWaitTimeSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    return-void
.end method
