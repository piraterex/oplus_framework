.class Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISoundTriggerHwCallback.java"

# interfaces
.implements Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mCachedVersion:I

    .line 142
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 149
    sget-object v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 228
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 232
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    goto :goto_0

    .line 235
    .end local p0    # "this":Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    throw v2

    .line 239
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 225
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    iget v0, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 211
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 213
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 215
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    goto :goto_0

    .line 218
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    throw v2

    .line 222
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist modelUnloaded(I)V
    .locals 5
    .param p1, "model"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 154
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 156
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v2, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 159
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    nop

    .line 168
    return-void

    .line 160
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method modelUnloaded is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;
    .end local p1    # "model":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;
    .restart local p1    # "model":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw v2
.end method

.method public blacklist phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .locals 5
    .param p1, "model"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    iget-object v3, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 178
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    nop

    .line 187
    return-void

    .line 179
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method phraseRecognitionCallback is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;
    .end local p1    # "model":I
    .end local p2    # "event":Landroid/media/soundtrigger/PhraseRecognitionEvent;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;
    .restart local p1    # "model":I
    .restart local p2    # "event":Landroid/media/soundtrigger/PhraseRecognitionEvent;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw v2
.end method

.method public blacklist recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V
    .locals 5
    .param p1, "model"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/RecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 196
    iget-object v3, p0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 197
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    nop

    .line 206
    return-void

    .line 198
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method recognitionCallback is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;
    .end local p1    # "model":I
    .end local p2    # "event":Landroid/media/soundtrigger/RecognitionEvent;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub$Proxy;
    .restart local p1    # "model":I
    .restart local p2    # "event":Landroid/media/soundtrigger/RecognitionEvent;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    throw v2
.end method
