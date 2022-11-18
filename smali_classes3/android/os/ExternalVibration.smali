.class public Landroid/os/ExternalVibration;
.super Ljava/lang/Object;
.source "ExternalVibration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ExternalVibration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ExternalVibration"


# instance fields
.field private blacklist mAttrs:Landroid/media/AudioAttributes;

.field private blacklist mController:Landroid/os/IExternalVibrationController;

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 200
    new-instance v0, Landroid/os/ExternalVibration$1;

    invoke-direct {v0}, Landroid/os/ExternalVibration$1;-><init>()V

    sput-object v0, Landroid/os/ExternalVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/media/AudioAttributes;
    .param p4, "controller"    # Landroid/os/IExternalVibrationController;

    .line 47
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/ExternalVibration;-><init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;Landroid/os/IBinder;)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/media/AudioAttributes;
    .param p4, "controller"    # Landroid/os/IExternalVibrationController;
    .param p5, "token"    # Landroid/os/IBinder;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroid/os/ExternalVibration;->mUid:I

    .line 59
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    .line 60
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    .line 61
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IExternalVibrationController;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    .line 62
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    .line 73
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 74
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/os/ExternalVibration;->readAudioAttributes(Landroid/os/Parcel;)Landroid/media/AudioAttributes;

    move-result-object v3

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IExternalVibrationController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IExternalVibrationController;

    move-result-object v4

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 77
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/ExternalVibration;-><init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;Landroid/os/IBinder;)V

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/ExternalVibration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/ExternalVibration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist readAudioAttributes(Landroid/os/Parcel;)Landroid/media/AudioAttributes;
    .locals 6
    .param p0, "in"    # Landroid/os/Parcel;

    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .local v0, "usage":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, "contentType":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .local v2, "capturePreset":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 87
    .local v3, "flags":I
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 88
    .local v4, "builder":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {v4, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 89
    invoke-virtual {v5, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 90
    invoke-virtual {v5, v2}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    .line 88
    return-object v5
.end method

.method private static blacklist writeAudioAttributes(Landroid/media/AudioAttributes;Landroid/os/Parcel;I)V
    .locals 1
    .param p0, "attrs"    # Landroid/media/AudioAttributes;
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 189
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 161
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/os/ExternalVibration;

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/ExternalVibration;

    .line 165
    .local v0, "other":Landroid/os/ExternalVibration;
    iget-object v1, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 162
    .end local v0    # "other":Landroid/os/ExternalVibration;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUid()I
    .locals 1

    .line 96
    iget v0, p0, Landroid/os/ExternalVibration;->mUid:I

    return v0
.end method

.method public blacklist getVibrationAttributes()Landroid/os/VibrationAttributes;
    .locals 2

    .line 108
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    iget-object v1, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public blacklist linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    nop

    .line 150
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public blacklist mute()Z
    .locals 3

    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->mute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    nop

    .line 123
    const/4 v0, 0x1

    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mute vibration stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalVibration"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalVibration{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/ExternalVibration;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 156
    iget-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 157
    return-void
.end method

.method public blacklist unmute()Z
    .locals 3

    .line 133
    :try_start_0
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->unmute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    nop

    .line 138
    const/4 v0, 0x1

    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unmute vibration stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalVibration"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 181
    iget v0, p0, Landroid/os/ExternalVibration;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0, p1, p2}, Landroid/os/ExternalVibration;->writeAudioAttributes(Landroid/media/AudioAttributes;Landroid/os/Parcel;I)V

    .line 184
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 185
    iget-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 186
    return-void
.end method
