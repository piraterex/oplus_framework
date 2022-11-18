.class final Landroid/content/ContentProviderProxy;
.super Ljava/lang/Object;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    .line 445
    return-void
.end method


# virtual methods
.method public blacklist applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 593
    .local p3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 594
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 596
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 598
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentProviderOperation;

    .line 601
    .local v4, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v4, v0, v2}, Landroid/content/ContentProviderOperation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 602
    .end local v4    # "operation":Landroid/content/ContentProviderOperation;
    goto :goto_0

    .line 603
    :cond_0
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 605
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V

    .line 606
    sget-object v2, Landroid/content/ContentProviderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 607
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    .local v2, "results":[Landroid/content/ContentProviderResult;
    nop

    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    return-object v2

    .line 610
    .end local v2    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 612
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 450
    iget-object v0, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 570
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 572
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 574
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 575
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 576
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 578
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 580
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 581
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    .local v2, "count":I
    nop

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 582
    return v2

    .line 584
    .end local v2    # "count":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 586
    throw v2
.end method

.method public blacklist call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "request"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 720
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 722
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 724
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 725
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 730
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 732
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    .local v2, "bundle":Landroid/os/Bundle;
    nop

    .line 736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 734
    return-object v2

    .line 736
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 738
    throw v2
.end method

.method public blacklist canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 815
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 817
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 819
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 820
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 822
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 824
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 825
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    .local v2, "out":Landroid/net/Uri;
    nop

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 826
    return-object v2

    .line 828
    .end local v2    # "out":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 830
    throw v2
.end method

.method public blacklist canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 838
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 840
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 841
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 842
    invoke-virtual {p3, v0, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 844
    iget-object v1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 848
    nop

    .line 849
    return-void

    .line 847
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 848
    throw v1
.end method

.method public blacklist checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 919
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 921
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 923
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 924
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 925
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 930
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 931
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 931
    return v2

    .line 933
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 935
    throw v2
.end method

.method public blacklist createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 794
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 796
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 798
    iget-object v2, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 801
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 802
    nop

    .line 803
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 802
    invoke-static {v2}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    .local v2, "cancellationSignal":Landroid/os/ICancellationSignal;
    nop

    .line 806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 804
    return-object v2

    .line 806
    .end local v2    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 808
    throw v2
.end method

.method public blacklist delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 619
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 621
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 623
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 624
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 625
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 627
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 629
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    .local v2, "count":I
    nop

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 631
    return v2

    .line 633
    .end local v2    # "count":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 635
    throw v2
.end method

.method public blacklist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 745
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 747
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 749
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 750
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 752
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 754
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 755
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    .local v2, "out":[Ljava/lang/String;
    nop

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 756
    return-object v2

    .line 758
    .end local v2    # "out":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    throw v2
.end method

.method public blacklist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 508
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 510
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 512
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 514
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 516
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .local v2, "out":Ljava/lang/String;
    nop

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    return-object v2

    .line 520
    .end local v2    # "out":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 522
    throw v2
.end method

.method public blacklist getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 529
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 531
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 532
    invoke-virtual {p2, v0, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 534
    iget-object v1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

.method public blacklist insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 546
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 548
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 551
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 552
    invoke-virtual {p3, v0, v2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 553
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 555
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 557
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 558
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    .local v2, "out":Landroid/net/Uri;
    nop

    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    return-object v2

    .line 561
    .end local v2    # "out":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    throw v2
.end method

.method public blacklist openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 694
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 696
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 699
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 700
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    const/4 v3, 0x0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 703
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    invoke-interface {v4, v5, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 705
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 706
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 707
    .local v2, "has":I
    if-eqz v2, :cond_1

    .line 708
    sget-object v3, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    .line 709
    .local v3, "fd":Landroid/content/res/AssetFileDescriptor;
    nop

    .line 711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    return-object v3

    .line 711
    .end local v2    # "has":I
    .end local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 713
    throw v2
.end method

.method public blacklist openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 667
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 669
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 671
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 672
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 673
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 674
    const/4 v3, 0x0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 676
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    invoke-interface {v4, v5, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 678
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 679
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 680
    .local v2, "has":I
    if-eqz v2, :cond_1

    .line 681
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    .line 682
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    return-object v3

    .line 684
    .end local v2    # "has":I
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 686
    throw v2
.end method

.method public blacklist openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 768
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 770
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 772
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 773
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 774
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 776
    const/4 v3, 0x0

    if-eqz p5, :cond_0

    invoke-interface {p5}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 778
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x17

    invoke-interface {v4, v5, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 780
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 781
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 782
    .local v2, "has":I
    if-eqz v2, :cond_1

    .line 783
    sget-object v3, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    .line 784
    .local v3, "fd":Landroid/content/res/AssetFileDescriptor;
    nop

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    return-object v3

    .line 786
    .end local v2    # "has":I
    .end local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    throw v2
.end method

.method public blacklist query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "queryArgs"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    new-instance v0, Landroid/database/BulkCursorToCursorAdaptor;

    invoke-direct {v0}, Landroid/database/BulkCursorToCursorAdaptor;-><init>()V

    .line 459
    .local v0, "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 460
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 462
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 464
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 465
    invoke-virtual {p2, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 466
    const/4 v4, 0x0

    .line 467
    .local v4, "length":I
    if-eqz p3, :cond_0

    .line 468
    array-length v5, p3

    move v4, v5

    .line 470
    :cond_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 472
    aget-object v6, p3, v5

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 474
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 475
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 476
    nop

    .line 477
    const/4 v5, 0x0

    if-eqz p5, :cond_2

    invoke-interface {p5}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v5

    .line 476
    :goto_1
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 479
    iget-object v6, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x1

    invoke-interface {v6, v7, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 481
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 483
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 484
    sget-object v3, Landroid/database/BulkCursorDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/BulkCursorDescriptor;

    .line 485
    .local v3, "d":Landroid/database/BulkCursorDescriptor;
    iget-object v6, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    iget-object v7, v3, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    if-eqz v7, :cond_3

    iget-object v5, v3, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    invoke-interface {v5}, Landroid/database/IBulkCursor;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_3
    invoke-static {v6, v5}, Landroid/os/Binder;->copyAllowBlocking(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 486
    invoke-virtual {v0, v3}, Landroid/database/BulkCursorToCursorAdaptor;->initialize(Landroid/database/BulkCursorDescriptor;)V

    .line 487
    .end local v3    # "d":Landroid/database/BulkCursorDescriptor;
    goto :goto_2

    .line 488
    :cond_4
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    const/4 v0, 0x0

    .line 491
    :goto_2
    nop

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 491
    return-object v0

    .line 499
    .end local v4    # "length":I
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 495
    :catch_0
    move-exception v3

    .line 496
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 497
    nop

    .end local v0    # "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/content/ContentProviderProxy;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "url":Landroid/net/Uri;
    .end local p3    # "projection":[Ljava/lang/String;
    .end local p4    # "queryArgs":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v3

    .line 492
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/content/ContentProviderProxy;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "url":Landroid/net/Uri;
    .restart local p3    # "projection":[Ljava/lang/String;
    .restart local p4    # "queryArgs":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :catch_1
    move-exception v3

    .line 493
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 494
    nop

    .end local v0    # "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/content/ContentProviderProxy;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "url":Landroid/net/Uri;
    .end local p3    # "projection":[Ljava/lang/String;
    .end local p4    # "queryArgs":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/content/ContentProviderProxy;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "url":Landroid/net/Uri;
    .restart local p3    # "projection":[Ljava/lang/String;
    .restart local p4    # "queryArgs":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 501
    throw v3
.end method

.method public blacklist refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 895
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 897
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 899
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 900
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 901
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 902
    if-eqz p4, :cond_0

    invoke-interface {p4}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 904
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 906
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 907
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    .local v3, "success":I
    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 910
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    return v2

    .line 910
    .end local v3    # "success":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    throw v2
.end method

.method public blacklist uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 855
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 857
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 859
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 860
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 862
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 864
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 865
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    .local v2, "out":Landroid/net/Uri;
    nop

    .line 868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 866
    return-object v2

    .line 868
    .end local v2    # "out":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 870
    throw v2
.end method

.method public blacklist uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 878
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.content.IContentProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 880
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 881
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 882
    invoke-virtual {p3, v0, v1}, Landroid/os/RemoteCallback;->writeToParcel(Landroid/os/Parcel;I)V

    .line 884
    iget-object v1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 888
    nop

    .line 889
    return-void

    .line 887
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 888
    throw v1
.end method

.method public blacklist update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 642
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 644
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IContentProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 646
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/AttributionSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 647
    invoke-virtual {p2, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 648
    invoke-virtual {p3, v0, v2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 649
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 651
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 653
    invoke-static {v1}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 654
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    .local v2, "count":I
    nop

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 655
    return v2

    .line 657
    .end local v2    # "count":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    throw v2
.end method
