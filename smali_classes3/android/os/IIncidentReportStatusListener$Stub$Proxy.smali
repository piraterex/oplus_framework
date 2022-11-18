.class Landroid/os/IIncidentReportStatusListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIncidentReportStatusListener.java"

# interfaces
.implements Landroid/os/IIncidentReportStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentReportStatusListener$Stub;
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

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 145
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "android.os.IIncidentReportStatusListener"

    return-object v0
.end method

.method public greylist-max-o onReportFailed()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 193
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.os.IIncidentReportStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    nop

    .line 199
    return-void

    .line 197
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    throw v1
.end method

.method public greylist-max-o onReportFinished()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 182
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.os.IIncidentReportStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    nop

    .line 188
    return-void

    .line 186
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    throw v1
.end method

.method public greylist-max-o onReportSectionStatus(II)V
    .locals 5
    .param p1, "section"    # I
    .param p2, "status"    # I
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
    const-string v1, "android.os.IIncidentReportStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v1, p0, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    nop

    .line 177
    return-void

    .line 175
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw v1
.end method

.method public greylist-max-o onReportStarted()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.os.IIncidentReportStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw v1
.end method
