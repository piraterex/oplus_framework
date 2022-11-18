.class Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISpellCheckerSession.java"

# interfaces
.implements Lcom/android/internal/textservice/ISpellCheckerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ISpellCheckerSession$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 155
    const-string v0, "com.android.internal.textservice.ISpellCheckerSession"

    return-object v0
.end method

.method public greylist-max-o onCancel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 188
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.textservice.ISpellCheckerSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    nop

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    throw v1
.end method

.method public greylist-max-o onClose()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.textservice.ISpellCheckerSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    nop

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    throw v1
.end method

.method public greylist-max-o onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .locals 5
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.textservice.ISpellCheckerSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 177
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v1, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    nop

    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    throw v1
.end method

.method public greylist-max-o onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .locals 4
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "multipleWords"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 161
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.textservice.ISpellCheckerSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 163
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    nop

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw v1
.end method
