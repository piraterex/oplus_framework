.class public Landroid/window/RemoteTransition;
.super Ljava/lang/Object;
.source "RemoteTransition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/RemoteTransition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAppThread:Landroid/app/IApplicationThread;

.field private blacklist mRemoteTransition:Landroid/window/IRemoteTransition;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 171
    new-instance v0, Landroid/window/RemoteTransition$1;

    invoke-direct {v0}, Landroid/window/RemoteTransition$1;-><init>()V

    sput-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 159
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/IRemoteTransition$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransition;

    move-result-object v1

    .line 160
    .local v1, "remoteTransition":Landroid/window/IRemoteTransition;
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 162
    .local v2, "appThread":Landroid/app/IApplicationThread;
    :goto_0
    iput-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    .line 163
    const-class v4, Landroid/annotation/NonNull;

    invoke-static {v4, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 165
    iput-object v2, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    .line 168
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IRemoteTransition;)V
    .locals 1
    .param p1, "remoteTransition"    # Landroid/window/IRemoteTransition;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V
    .locals 2
    .param p1, "remoteTransition"    # Landroid/window/IRemoteTransition;
    .param p2, "appThread"    # Landroid/app/IApplicationThread;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    .line 79
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 81
    iput-object p2, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    .line 84
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    return-void
.end method


# virtual methods
.method public blacklist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 48
    iget-object v0, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-interface {v0}, Landroid/window/IRemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppThread()Landroid/app/IApplicationThread;
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/IRemoteTransition;
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    return-object v0
.end method

.method public blacklist setAppThread(Landroid/app/IApplicationThread;)Landroid/window/RemoteTransition;
    .locals 0
    .param p1, "value"    # Landroid/app/IApplicationThread;

    .line 118
    iput-object p1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    .line 119
    return-object p0
.end method

.method public blacklist setRemoteTransition(Landroid/window/IRemoteTransition;)Landroid/window/RemoteTransition;
    .locals 2
    .param p1, "value"    # Landroid/window/IRemoteTransition;

    .line 107
    iput-object p1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    .line 108
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 110
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteTransition { remoteTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appThread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "flg":B
    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 142
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 143
    iget-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 144
    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 145
    :cond_1
    return-void
.end method
