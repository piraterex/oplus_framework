.class public Landroid/content/pm/ServiceInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ServiceInfo$ForegroundServiceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_EXTERNAL_SERVICE:I = 0x4

.field public static final whitelist FLAG_ISOLATED_PROCESS:I = 0x2

.field public static final whitelist FLAG_SINGLE_USER:I = 0x40000000

.field public static final whitelist FLAG_STOP_WITH_TASK:I = 0x1

.field public static final whitelist FLAG_USE_APP_ZYGOTE:I = 0x8

.field public static final greylist-max-o FLAG_VISIBLE_TO_INSTANT_APP:I = 0x100000

.field public static final whitelist FOREGROUND_SERVICE_TYPE_CAMERA:I = 0x40

.field public static final whitelist FOREGROUND_SERVICE_TYPE_CONNECTED_DEVICE:I = 0x10

.field public static final whitelist FOREGROUND_SERVICE_TYPE_DATA_SYNC:I = 0x1

.field public static final whitelist FOREGROUND_SERVICE_TYPE_LOCATION:I = 0x8

.field public static final whitelist FOREGROUND_SERVICE_TYPE_MANIFEST:I = -0x1

.field public static final whitelist FOREGROUND_SERVICE_TYPE_MEDIA_PLAYBACK:I = 0x2

.field public static final whitelist FOREGROUND_SERVICE_TYPE_MEDIA_PROJECTION:I = 0x20

.field public static final whitelist FOREGROUND_SERVICE_TYPE_MICROPHONE:I = 0x80

.field public static final whitelist FOREGROUND_SERVICE_TYPE_NONE:I = 0x0

.field public static final whitelist FOREGROUND_SERVICE_TYPE_PHONE_CALL:I = 0x4

.field public static final blacklist NUM_OF_FOREGROUND_SERVICE_TYPES:I = 0x8


# instance fields
.field public whitelist flags:I

.field public blacklist mForegroundServiceType:I

.field public whitelist permission:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 294
    new-instance v0, Landroid/content/pm/ServiceInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ServiceInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 215
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 216
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ServiceInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ServiceInfo;

    .line 219
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 220
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 221
    iget v0, p1, Landroid/content/pm/ServiceInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 222
    iget v0, p1, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    iput v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 223
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 305
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 309
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ServiceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist foregroundServiceTypeToLabel(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 257
    sparse-switch p0, :sswitch_data_0

    .line 279
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 277
    :sswitch_0
    const-string/jumbo v0, "microphone"

    return-object v0

    .line 275
    :sswitch_1
    const-string v0, "camera"

    return-object v0

    .line 273
    :sswitch_2
    const-string/jumbo v0, "mediaProjection"

    return-object v0

    .line 271
    :sswitch_3
    const-string v0, "connectedDevice"

    return-object v0

    .line 269
    :sswitch_4
    const-string v0, "location"

    return-object v0

    .line 267
    :sswitch_5
    const-string/jumbo v0, "phoneCall"

    return-object v0

    .line 265
    :sswitch_6
    const-string/jumbo v0, "mediaPlayback"

    return-object v0

    .line 263
    :sswitch_7
    const-string v0, "dataSync"

    return-object v0

    .line 261
    :sswitch_8
    const-string/jumbo v0, "none"

    return-object v0

    .line 259
    :sswitch_9
    const-string/jumbo v0, "manifest"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_9
        0x0 -> :sswitch_8
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 234
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 235
    return-void
.end method

.method greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpFlags"    # I

    .line 239
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 242
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 243
    return-void
.end method

.method public whitelist getForegroundServiceType()I
    .locals 1

    .line 230
    iget v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 288
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 289
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 290
    iget v0, p0, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    return-void
.end method
