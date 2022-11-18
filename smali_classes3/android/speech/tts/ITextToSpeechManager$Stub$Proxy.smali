.class Landroid/speech/tts/ITextToSpeechManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITextToSpeechManager.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/speech/tts/ITextToSpeechManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 110
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/speech/tts/ITextToSpeechManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist createSession(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .locals 4
    .param p1, "engine"    # Ljava/lang/String;
    .param p2, "managerCallback"    # Landroid/speech/tts/ITextToSpeechSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.speech.tts.ITextToSpeechManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 126
    iget-object v1, p0, Landroid/speech/tts/ITextToSpeechManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    nop

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 117
    const-string v0, "android.speech.tts.ITextToSpeechManager"

    return-object v0
.end method
