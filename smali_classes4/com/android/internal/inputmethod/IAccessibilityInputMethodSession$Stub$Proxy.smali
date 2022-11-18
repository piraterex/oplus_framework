.class Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;
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

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 156
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist finishInput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 186
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    nop

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    throw v1
.end method

.method public blacklist finishSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    nop

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 163
    const-string v0, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    return-object v0
.end method

.method public blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 5
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p3, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 208
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 211
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v1, p0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    nop

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw v1
.end method

.method public blacklist updateSelection(IIIIII)V
    .locals 4
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v1, p0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    nop

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    throw v1
.end method
