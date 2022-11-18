.class Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITvInteractiveAppSession.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;
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

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 520
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 523
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 566
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 567
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 568
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 569
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 573
    nop

    .line 574
    return-void

    .line 572
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 573
    throw v1
.end method

.method public blacklist createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 845
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 847
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 848
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 852
    nop

    .line 853
    return-void

    .line 851
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 852
    throw v1
.end method

.method public blacklist destroyBiInteractiveApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "biIAppId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 579
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    nop

    .line 586
    return-void

    .line 584
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    throw v1
.end method

.method public blacklist dispatchSurfaceChanged(III)V
    .locals 5
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 807
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 815
    nop

    .line 816
    return-void

    .line 814
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 815
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 527
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSession"

    return-object v0
.end method

.method public blacklist notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .locals 5
    .param p1, "response"    # Landroid/media/tv/AdResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 833
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 834
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 835
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 839
    nop

    .line 840
    return-void

    .line 838
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 839
    throw v1
.end method

.method public blacklist notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .locals 5
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 821
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 822
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 823
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 827
    nop

    .line 828
    return-void

    .line 826
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 827
    throw v1
.end method

.method public blacklist notifyContentAllowed()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 760
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 765
    nop

    .line 766
    return-void

    .line 764
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 765
    throw v1
.end method

.method public blacklist notifyContentBlocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "rating"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 771
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 773
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 777
    nop

    .line 778
    return-void

    .line 776
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 777
    throw v1
.end method

.method public blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 676
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 678
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 679
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    nop

    .line 684
    return-void

    .line 682
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    throw v1
.end method

.method public blacklist notifySignalStrength(I)V
    .locals 5
    .param p1, "strength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 783
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 789
    nop

    .line 790
    return-void

    .line 788
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 789
    throw v1
.end method

.method public blacklist notifyTrackSelected(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 712
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    nop

    .line 720
    return-void

    .line 718
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    throw v1
.end method

.method public blacklist notifyTracksChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 725
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 727
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    nop

    .line 732
    return-void

    .line 730
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    throw v1
.end method

.method public blacklist notifyTuned(Landroid/net/Uri;)V
    .locals 5
    .param p1, "channelUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 700
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 701
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 702
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 706
    nop

    .line 707
    return-void

    .line 705
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 706
    throw v1
.end method

.method public blacklist notifyVideoAvailable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 737
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    nop

    .line 743
    return-void

    .line 741
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    throw v1
.end method

.method public blacklist notifyVideoUnavailable(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 748
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 754
    nop

    .line 755
    return-void

    .line 753
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 754
    throw v1
.end method

.method public blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "frame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 858
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 859
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 860
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 864
    nop

    .line 865
    return-void

    .line 863
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 864
    throw v1
.end method

.method public blacklist release()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 689
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    nop

    .line 695
    return-void

    .line 693
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    throw v1
.end method

.method public blacklist removeMediaView()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 870
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 871
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 875
    nop

    .line 876
    return-void

    .line 874
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 875
    throw v1
.end method

.method public blacklist resetInteractiveApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 555
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    nop

    .line 561
    return-void

    .line 559
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    throw v1
.end method

.method public blacklist sendCurrentChannelLcn(I)V
    .locals 5
    .param p1, "lcn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 615
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 621
    nop

    .line 622
    return-void

    .line 620
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 621
    throw v1
.end method

.method public blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .locals 5
    .param p1, "channelUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 603
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 604
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 605
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    nop

    .line 610
    return-void

    .line 608
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    throw v1
.end method

.method public blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 651
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 657
    nop

    .line 658
    return-void

    .line 656
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 657
    throw v1
.end method

.method public blacklist sendSigningResult(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 663
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 666
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    nop

    .line 671
    return-void

    .line 669
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    throw v1
.end method

.method public blacklist sendStreamVolume(F)V
    .locals 5
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 627
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 629
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 633
    nop

    .line 634
    return-void

    .line 632
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 633
    throw v1
.end method

.method public blacklist sendTrackInfoList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 637
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 639
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 641
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 645
    nop

    .line 646
    return-void

    .line 644
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 645
    throw v1
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 795
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 796
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 797
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 801
    nop

    .line 802
    return-void

    .line 800
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 801
    throw v1
.end method

.method public blacklist setTeletextAppEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 591
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 593
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 597
    nop

    .line 598
    return-void

    .line 596
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 597
    throw v1
.end method

.method public blacklist startInteractiveApp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 533
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 538
    nop

    .line 539
    return-void

    .line 537
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 538
    throw v1
.end method

.method public blacklist stopInteractiveApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 544
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppSession"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 549
    nop

    .line 550
    return-void

    .line 548
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 549
    throw v1
.end method
