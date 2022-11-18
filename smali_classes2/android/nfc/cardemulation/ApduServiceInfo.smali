.class public Landroid/nfc/cardemulation/ApduServiceInfo;
.super Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o TAG:Ljava/lang/String; = "ApduServiceInfo"


# instance fields
.field protected greylist-max-o mBannerResourceId:I

.field protected greylist-max-o mDescription:Ljava/lang/String;

.field protected greylist mDynamicAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mOffHostName:Ljava/lang/String;

.field protected greylist-max-o mOnHost:Z

.field final blacklist mRequiresDeviceScreenOn:Z

.field protected greylist-max-o mRequiresDeviceUnlock:Z

.field protected greylist mService:Landroid/content/pm/ResolveInfo;

.field protected greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field protected greylist mStaticAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mStaticOffHostName:Ljava/lang/String;

.field protected greylist-max-o mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 607
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 21
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {p0 .. p0}, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;-><init>()V

    .line 171
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 172
    .local v5, "si":Landroid/content/pm/ServiceInfo;
    const/4 v6, 0x0

    .line 174
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_1

    .line 175
    :try_start_0
    const-string v0, "android.nfc.cardemulation.host_apdu_service"

    invoke-virtual {v5, v2, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v6, v0

    .line 176
    if-eqz v6, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "No android.nfc.cardemulation.host_apdu_service meta-data"

    invoke-direct {v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v0

    .line 181
    .restart local v5    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :cond_1
    const-string v0, "android.nfc.cardemulation.off_host_apdu_service"

    invoke-virtual {v5, v2, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v6, v0

    .line 182
    if-eqz v6, :cond_1b

    .line 188
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 189
    .local v0, "eventType":I
    :goto_1
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_2

    .line 190
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v0, v7

    goto :goto_1

    .line 193
    :cond_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, "tagName":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v10, "host-apdu-service"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    .line 195
    :cond_3
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with <host-apdu-service> tag"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v7

    .line 197
    .restart local v5    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :cond_4
    :goto_2
    if-nez v4, :cond_6

    const-string v10, "offhost-apdu-service"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    .line 198
    :cond_5
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with <offhost-apdu-service> tag"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v7

    .line 202
    .restart local v5    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :cond_6
    :goto_3
    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 203
    .local v10, "res":Landroid/content/res/Resources;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    .line 204
    .local v11, "attrs":Landroid/util/AttributeSet;
    const/4 v13, 0x4

    const/4 v15, 0x0

    if-eqz v4, :cond_7

    .line 205
    sget-object v12, Lcom/android/internal/R$styleable;->HostApduService:[I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 207
    .local v12, "sa":Landroid/content/res/TypedArray;
    iput-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 208
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 210
    invoke-virtual {v12, v8, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    iput-boolean v14, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 213
    invoke-virtual {v12, v13, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    .line 216
    const/4 v13, -0x1

    const/4 v14, 0x3

    invoke-virtual {v12, v14, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 218
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 220
    const/4 v13, 0x0

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 221
    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    .line 222
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    goto :goto_5

    .line 224
    :cond_7
    sget-object v12, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 226
    .restart local v12    # "sa":Landroid/content/res/TypedArray;
    iput-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 227
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 229
    invoke-virtual {v12, v8, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    iput-boolean v14, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 232
    const/4 v14, 0x5

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    iput-boolean v14, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    .line 235
    const/4 v14, -0x1

    const/4 v15, 0x3

    invoke-virtual {v12, v15, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 237
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 239
    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 241
    if-eqz v13, :cond_9

    .line 242
    const-string v14, "eSE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 243
    const-string v13, "eSE1"

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    goto :goto_4

    .line 244
    :cond_8
    iget-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    const-string v14, "SIM"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 245
    const-string v13, "SIM1"

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 248
    :cond_9
    :goto_4
    iget-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    iput-object v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    .line 249
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    :goto_5
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 253
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 254
    iput-boolean v4, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 256
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 257
    .local v12, "depth":I
    const/4 v13, 0x0

    .line 260
    .local v13, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :goto_6
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move v0, v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_a

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v12, :cond_19

    :cond_a
    if-eq v0, v7, :cond_19

    .line 262
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v14

    .line 263
    const-string v14, "aid-group"

    const-string v15, "ApduServiceInfo"

    if-ne v0, v8, :cond_e

    :try_start_1
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    if-nez v13, :cond_e

    .line 265
    sget-object v14, Lcom/android/internal/R$styleable;->AidGroup:[I

    invoke-virtual {v10, v11, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 268
    .local v14, "groupAttrs":Landroid/content/res/TypedArray;
    invoke-virtual {v14, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 270
    .local v19, "groupCategory":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v14, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    .line 272
    .local v7, "groupDescription":Ljava/lang/String;
    const-string v8, "payment"

    move-object/from16 v2, v19

    .end local v19    # "groupCategory":Ljava/lang/String;
    .local v2, "groupCategory":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v2

    .end local v2    # "groupCategory":Ljava/lang/String;
    .restart local v19    # "groupCategory":Ljava/lang/String;
    const-string v2, "other"

    if-nez v8, :cond_b

    .line 273
    move-object/from16 v19, v2

    move-object/from16 v8, v19

    goto :goto_7

    .line 272
    :cond_b
    move-object/from16 v8, v19

    .line 275
    .end local v19    # "groupCategory":Ljava/lang/String;
    .local v8, "groupCategory":Ljava/lang/String;
    :goto_7
    :try_start_2
    iget-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    .line 276
    .end local v13    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .local v3, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v3, :cond_d

    .line 277
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not allowing multiple aid-groups in the "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " category"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, 0x0

    move-object v13, v2

    .end local v3    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .local v2, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_8

    .line 277
    .end local v2    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v3    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_c
    move-object v13, v3

    goto :goto_8

    .line 283
    :cond_d
    new-instance v2, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v2, v8, v7}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v2    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    move-object v13, v2

    .line 285
    .end local v2    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v13    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :goto_8
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    .end local v7    # "groupDescription":Ljava/lang/String;
    .end local v8    # "groupCategory":Ljava/lang/String;
    .end local v14    # "groupAttrs":Landroid/content/res/TypedArray;
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto/16 :goto_6

    :cond_e
    const/4 v2, 0x3

    if-ne v0, v2, :cond_11

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v13, :cond_11

    .line 288
    iget-object v3, v13, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 289
    iget-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v7, v13, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 290
    iget-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v7, v13, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v3, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 293
    :cond_f
    const-string v3, "Not adding <aid-group> with empty or invalid AIDs"

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    :cond_10
    :goto_9
    const/4 v13, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto/16 :goto_6

    .line 296
    :cond_11
    const-string v3, "Ignoring invalid or duplicate aid: "

    const/4 v7, 0x2

    if-ne v0, v7, :cond_13

    :try_start_3
    const-string v7, "aid-filter"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v13, :cond_13

    .line 298
    sget-object v7, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v10, v11, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 300
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 301
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 302
    .local v8, "aid":Ljava/lang/String;
    invoke-static {v8}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    iget-object v14, v13, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 303
    iget-object v3, v13, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 305
    :cond_12
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_a
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .end local v8    # "aid":Ljava/lang/String;
    const/4 v14, 0x0

    goto/16 :goto_d

    :cond_13
    const/4 v7, 0x2

    if-ne v0, v7, :cond_15

    const-string v7, "aid-prefix-filter"

    .line 309
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    if-eqz v13, :cond_15

    .line 310
    sget-object v7, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v10, v11, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 312
    .restart local v7    # "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 313
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 315
    .restart local v8    # "aid":Ljava/lang/String;
    const-string v14, "*"

    invoke-virtual {v8, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 316
    invoke-static {v8}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    iget-object v14, v13, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 317
    iget-object v3, v13, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 319
    :cond_14
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_b
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    .end local v7    # "a":Landroid/content/res/TypedArray;
    .end local v8    # "aid":Ljava/lang/String;
    const/4 v14, 0x0

    goto :goto_d

    :cond_15
    const/4 v7, 0x2

    if-ne v0, v7, :cond_18

    const-string v8, "aid-suffix-filter"

    .line 323
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    if-eqz v13, :cond_17

    .line 324
    sget-object v8, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v10, v11, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 326
    .local v8, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 327
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 329
    .local v17, "aid":Ljava/lang/String;
    const-string v2, "#"

    move-object/from16 v7, v17

    .end local v17    # "aid":Ljava/lang/String;
    .local v7, "aid":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .end local v7    # "aid":Ljava/lang/String;
    .local v2, "aid":Ljava/lang/String;
    invoke-static {v2}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, v13, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 331
    iget-object v3, v13, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 333
    :cond_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_c
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 336
    .end local v2    # "aid":Ljava/lang/String;
    .end local v8    # "a":Landroid/content/res/TypedArray;
    goto :goto_d

    .line 323
    :cond_17
    const/4 v14, 0x0

    goto :goto_d

    .line 322
    :cond_18
    const/4 v14, 0x0

    .line 260
    :goto_d
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto/16 :goto_6

    .line 341
    .end local v0    # "eventType":I
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "attrs":Landroid/util/AttributeSet;
    .end local v12    # "depth":I
    .end local v13    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_19
    if-eqz v6, :cond_1a

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 344
    :cond_1a
    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 345
    return-void

    .line 183
    :cond_1b
    :try_start_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 341
    .restart local v5    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :catchall_0
    move-exception v0

    goto :goto_e

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create context for: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 341
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :goto_e
    if-eqz v6, :cond_1c

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 342
    :cond_1c
    throw v0
.end method

.method public constructor greylist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "bannerResource"    # I
    .param p8, "uid"    # I
    .param p9, "settingsActivityName"    # Ljava/lang/String;
    .param p10, "offHost"    # Ljava/lang/String;
    .param p11, "staticOffHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 136
    .local p4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    nop

    .line 137
    nop

    .line 136
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, p2

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "requiresScreenOn"    # Z
    .param p8, "bannerResource"    # I
    .param p9, "uid"    # I
    .param p10, "settingsActivityName"    # Ljava/lang/String;
    .param p11, "offHost"    # Ljava/lang/String;
    .param p12, "staticOffHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 147
    .local p4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object v0, p0

    invoke-direct {p0}, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;-><init>()V

    .line 148
    move-object v1, p1

    iput-object v1, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 149
    move-object v2, p3

    iput-object v2, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 150
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 151
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 152
    move-object/from16 v3, p11

    iput-object v3, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 153
    move-object/from16 v4, p12

    iput-object v4, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    .line 154
    move v5, p2

    iput-boolean v5, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 155
    move/from16 v6, p6

    iput-boolean v6, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 156
    move/from16 v7, p7

    iput-boolean v7, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    .line 157
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/AidGroup;

    .line 158
    .local v9, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v10, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v11, v9, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v9    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/AidGroup;

    .line 161
    .restart local v9    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v10, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    iget-object v11, v9, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v9    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_1

    .line 163
    :cond_1
    move/from16 v8, p8

    iput v8, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 164
    move/from16 v9, p9

    iput v9, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 165
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 655
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") (UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 656
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-eqz v0, :cond_0

    .line 658
    const-string v0, "    On Host Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_0
    const-string v0, "    Off-host Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        Current off-host SE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " static off-host SE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    :goto_0
    const-string v0, "    Static AID groups:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "            AID: "

    const-string v3, "        Category: "

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 666
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    iget-object v3, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 668
    .local v4, "aid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    .end local v4    # "aid":Ljava/lang/String;
    goto :goto_2

    .line 670
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    goto :goto_1

    .line 671
    :cond_2
    const-string v0, "    Dynamic AID groups:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 673
    .restart local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    iget-object v4, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 675
    .local v5, "aid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    .end local v5    # "aid":Ljava/lang/String;
    goto :goto_4

    .line 677
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_3
    goto :goto_3

    .line 678
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Settings Activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Requires Device Unlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Requires Device ScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 693
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 694
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 695
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 696
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-nez v0, :cond_0

    .line 697
    const-wide v0, 0x10900000004L

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 698
    const-wide v0, 0x10900000005L

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 700
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide v2, 0x20b00000006L

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 701
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 702
    .local v2, "token":J
    invoke-virtual {v1, p1}, Landroid/nfc/cardemulation/AidGroup;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 703
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 704
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v2    # "token":J
    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 706
    .restart local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 707
    .local v4, "token":J
    invoke-virtual {v1, p1}, Landroid/nfc/cardemulation/AidGroup;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 708
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 709
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v4    # "token":J
    goto :goto_1

    .line 710
    :cond_2
    const-wide v0, 0x10900000008L

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 711
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 561
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 562
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 563
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 565
    .local v1, "thatService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 566
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 565
    :goto_0
    return v0
.end method

.method public greylist-max-o getAidGroups()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 417
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    goto :goto_0

    .line 419
    :cond_0
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 420
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 423
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_1
    goto :goto_1

    .line 426
    :cond_2
    return-object v0
.end method

.method public greylist-max-o getAids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v0, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 367
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 368
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_0

    .line 369
    :cond_0
    return-object v0
.end method

.method public greylist-max-o getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;

    .line 434
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    .line 435
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 436
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    iget-object v1, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    return-object v1

    .line 439
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    goto :goto_0

    .line 440
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getComponent()Landroid/content/ComponentName;
    .locals 3

    .line 348
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getDescription()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 399
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    return-object v0
.end method

.method public blacklist getOffHostSecureElement()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPrefixAids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, "prefixAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 375
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 376
    .local v4, "aid":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v4    # "aid":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 380
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    goto :goto_0

    .line 381
    :cond_2
    return-object v0
.end method

.method public greylist getSettingsActivityName()Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSubsetAids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v0, "subsetAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 387
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 388
    .local v4, "aid":Ljava/lang/String;
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v4    # "aid":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 392
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    goto :goto_0

    .line 393
    :cond_2
    return-object v0
.end method

.method public greylist getUid()I
    .locals 1

    .line 471
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    return v0
.end method

.method public greylist-max-o hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 444
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 571
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isOnHost()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    return v0
.end method

.method public greylist-max-o loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 505
    :try_start_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 528
    const-string v0, "Could not load banner."

    const-string v1, "ApduServiceInfo"

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-super {p0, p1, v3, v4}, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 533
    :catch_0
    move-exception v3

    .line 534
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-object v2

    .line 530
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 531
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-object v2
.end method

.method public greylist-max-o loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 513
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 500
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o removeDynamicAidGroupForCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 403
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist requiresScreenOn()Z
    .locals 1

    .line 461
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    return v0
.end method

.method public greylist requiresUnlock()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    return v0
.end method

.method public blacklist setOffHostSecureElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "offHost"    # Ljava/lang/String;

    .line 488
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public greylist-max-o setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V
    .locals 2
    .param p1, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .line 475
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApduService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v1, ", Static AID Groups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 550
    .local v2, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .end local v2    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_0

    .line 552
    :cond_0
    const-string v1, ", Dynamic AID Groups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 554
    .restart local v2    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .end local v2    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_1

    .line 556
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist unsetOffHostSecureElement()V
    .locals 1

    .line 496
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 582
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 583
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 584
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 591
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 595
    :cond_1
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    invoke-super {p0, p1, p2}, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 604
    return-void
.end method
