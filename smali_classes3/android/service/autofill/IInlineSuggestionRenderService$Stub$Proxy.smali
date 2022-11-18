.class Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInlineSuggestionRenderService.java"

# interfaces
.implements Landroid/service/autofill/IInlineSuggestionRenderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IInlineSuggestionRenderService$Stub;
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

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 157
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist destroySuggestionViews(II)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 205
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.autofill.IInlineSuggestionRenderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v1, p0, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    nop

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    throw v1
.end method

.method public blacklist getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 189
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.autofill.IInlineSuggestionRenderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 191
    iget-object v1, p0, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 164
    const-string v0, "android.service.autofill.IInlineSuggestionRenderService"

    return-object v0
.end method

.method public blacklist renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 4
    .param p1, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;
    .param p2, "presentation"    # Landroid/service/autofill/InlinePresentation;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "hostInputToken"    # Landroid/os/IBinder;
    .param p6, "displayId"    # I
    .param p7, "userId"    # I
    .param p8, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.autofill.IInlineSuggestionRenderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 173
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 176
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v1, p0, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    nop

    .line 184
    return-void

    .line 182
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw v1
.end method
