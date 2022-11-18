.class public final Landroid/media/MediaRoute2Info;
.super Ljava/lang/Object;
.source "MediaRoute2Info.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRoute2Info$Builder;,
        Landroid/media/MediaRoute2Info$Type;,
        Landroid/media/MediaRoute2Info$PlaybackVolume;,
        Landroid/media/MediaRoute2Info$ConnectionState;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_STATE_CONNECTED:I = 0x2

.field public static final whitelist CONNECTION_STATE_CONNECTING:I = 0x1

.field public static final whitelist CONNECTION_STATE_DISCONNECTED:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FEATURE_LIVE_AUDIO:Ljava/lang/String; = "android.media.route.feature.LIVE_AUDIO"

.field public static final whitelist FEATURE_LIVE_VIDEO:Ljava/lang/String; = "android.media.route.feature.LIVE_VIDEO"

.field public static final blacklist FEATURE_LOCAL_PLAYBACK:Ljava/lang/String; = "android.media.route.feature.LOCAL_PLAYBACK"

.field public static final whitelist FEATURE_REMOTE_AUDIO_PLAYBACK:Ljava/lang/String; = "android.media.route.feature.REMOTE_AUDIO_PLAYBACK"

.field public static final blacklist FEATURE_REMOTE_GROUP_PLAYBACK:Ljava/lang/String; = "android.media.route.feature.REMOTE_GROUP_PLAYBACK"

.field public static final whitelist FEATURE_REMOTE_PLAYBACK:Ljava/lang/String; = "android.media.route.feature.REMOTE_PLAYBACK"

.field public static final whitelist FEATURE_REMOTE_VIDEO_PLAYBACK:Ljava/lang/String; = "android.media.route.feature.REMOTE_VIDEO_PLAYBACK"

.field public static final whitelist PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final whitelist PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final blacklist TYPE_BLE_HEADSET:I = 0x1a

.field public static final blacklist TYPE_BLUETOOTH_A2DP:I = 0x8

.field public static final blacklist TYPE_BUILTIN_SPEAKER:I = 0x2

.field public static final blacklist TYPE_DOCK:I = 0xd

.field public static final blacklist TYPE_GROUP:I = 0x7d0

.field public static final blacklist TYPE_HDMI:I = 0x9

.field public static final blacklist TYPE_HEARING_AID:I = 0x17

.field public static final blacklist TYPE_REMOTE_SPEAKER:I = 0x3ea

.field public static final blacklist TYPE_REMOTE_TV:I = 0x3e9

.field public static final blacklist TYPE_UNKNOWN:I = 0x0

.field public static final blacklist TYPE_USB_ACCESSORY:I = 0xc

.field public static final blacklist TYPE_USB_DEVICE:I = 0xb

.field public static final blacklist TYPE_USB_HEADSET:I = 0x16

.field public static final blacklist TYPE_WIRED_HEADPHONES:I = 0x4

.field public static final blacklist TYPE_WIRED_HEADSET:I = 0x3


# instance fields
.field final blacklist mAddress:Ljava/lang/String;

.field final blacklist mClientPackageName:Ljava/lang/String;

.field final blacklist mConnectionState:I

.field final blacklist mDeduplicationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mDescription:Ljava/lang/CharSequence;

.field final blacklist mExtras:Landroid/os/Bundle;

.field final blacklist mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mIconUri:Landroid/net/Uri;

.field final blacklist mId:Ljava/lang/String;

.field final blacklist mIsSystem:Z

.field final blacklist mName:Ljava/lang/CharSequence;

.field final blacklist mPackageName:Ljava/lang/String;

.field final blacklist mProviderId:Ljava/lang/String;

.field final blacklist mType:I

.field final blacklist mVolume:I

.field final blacklist mVolumeHandling:I

.field final blacklist mVolumeMax:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/media/MediaRoute2Info$1;

    invoke-direct {v0}, Landroid/media/MediaRoute2Info$1;-><init>()V

    sput-object v0, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaRoute2Info$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/media/MediaRoute2Info$Builder;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iget-object v0, p1, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    .line 355
    iget-object v0, p1, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    .line 356
    iget-object v0, p1, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    .line 357
    iget v0, p1, Landroid/media/MediaRoute2Info$Builder;->mType:I

    iput v0, p0, Landroid/media/MediaRoute2Info;->mType:I

    .line 358
    iget-boolean v0, p1, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    .line 359
    iget-object v0, p1, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    .line 360
    iget-object v0, p1, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    .line 361
    iget v0, p1, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    iput v0, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    .line 362
    iget-object v0, p1, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    .line 363
    iget-object v0, p1, Landroid/media/MediaRoute2Info$Builder;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mPackageName:Ljava/lang/String;

    .line 364
    iget v0, p1, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    .line 365
    iget v0, p1, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    .line 366
    iget v0, p1, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    .line 367
    iget-object v0, p1, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    .line 368
    iget-object v0, p1, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    .line 369
    iget-object v0, p1, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    .line 370
    iget-object v0, p1, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    .line 371
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    .line 375
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mType:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    .line 379
    const-class v0, Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    .line 380
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mPackageName:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    .line 391
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 627
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 628
    return v0

    .line 630
    :cond_0
    instance-of v1, p1, Landroid/media/MediaRoute2Info;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 631
    return v2

    .line 633
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 636
    .local v1, "other":Landroid/media/MediaRoute2Info;
    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    .line 637
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    .line 638
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/MediaRoute2Info;->mType:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mType:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    iget-boolean v4, v1, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    .line 641
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    .line 642
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mConnectionState:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    .line 644
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mPackageName:Ljava/lang/String;

    .line 645
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    iget v4, v1, Landroid/media/MediaRoute2Info;->mVolume:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    .line 649
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    .line 650
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    .line 651
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 636
    :goto_0
    return v0
.end method

.method public blacklist getAddress()Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getClientPackageName()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getConnectionState()I
    .locals 1

    .line 483
    iget v0, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    return v0
.end method

.method public blacklist getDeduplicationIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 546
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 472
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 2

    .line 554
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0
.end method

.method public whitelist getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getIconUri()Landroid/net/Uri;
    .locals 1

    .line 464
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 2

    .line 404
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2Utils;->toUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 407
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getOriginalId()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProviderId()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 441
    iget v0, p0, Landroid/media/MediaRoute2Info;->mType:I

    return v0
.end method

.method public whitelist getVolume()I
    .locals 1

    .line 527
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    return v0
.end method

.method public whitelist getVolumeHandling()I
    .locals 1

    .line 513
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    return v0
.end method

.method public whitelist getVolumeMax()I
    .locals 1

    .line 520
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    return v0
.end method

.method public blacklist hasAllFeatures(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 602
    .local p1, "features":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "features must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 603
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 604
    .local v1, "feature":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getFeatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 605
    const/4 v0, 0x0

    return v0

    .line 607
    .end local v1    # "feature":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 608
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hasAnyFeatures(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 587
    .local p1, "features":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "features must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 589
    .local v1, "feature":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getFeatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    const/4 v0, 0x1

    return v0

    .line 592
    .end local v1    # "feature":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 593
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 657
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/MediaRoute2Info;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    .line 658
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    .line 659
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 657
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSystemRoute()Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    return v0
.end method

.method public blacklist isValid()Z
    .locals 1

    .line 618
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 620
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    const-string v1, "MediaRoute2Info{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 667
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 668
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 669
    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getFeatures()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 670
    const-string v1, ", iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 671
    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 672
    const-string v1, ", connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 673
    const-string v1, ", clientPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 674
    const-string v1, ", volumeHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolumeHandling()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 675
    const-string v1, ", volumeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 676
    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 677
    const-string v1, ", deduplicationIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 678
    const-string v1, ", providerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 679
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 680
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 690
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 692
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 693
    iget v0, p0, Landroid/media/MediaRoute2Info;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget-boolean v0, p0, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 695
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 696
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 697
    iget v0, p0, Landroid/media/MediaRoute2Info;->mConnectionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 700
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    iget v0, p0, Landroid/media/MediaRoute2Info;->mVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 706
    iget-object v0, p0, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    return-void
.end method
