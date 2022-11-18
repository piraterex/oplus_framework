.class Lcom/android/internal/view/IInputContext$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputContext.java"

# interfaces
.implements Lcom/android/internal/view/IInputContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContext$Stub;
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

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 658
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 918
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 919
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 920
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    nop

    .line 925
    return-void

    .line 923
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    throw v1
.end method

.method public blacklist clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "states"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 955
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 956
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 957
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 962
    nop

    .line 963
    return-void

    .line 961
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 962
    throw v1
.end method

.method public blacklist commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "completion"    # Landroid/view/inputmethod/CompletionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 852
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 853
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 854
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 855
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    nop

    .line 860
    return-void

    .line 858
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    throw v1
.end method

.method public blacklist commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1068
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1069
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1070
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1071
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1073
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1074
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1078
    nop

    .line 1079
    return-void

    .line 1077
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1078
    throw v1
.end method

.method public blacklist commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "correction"    # Landroid/view/inputmethod/CorrectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 865
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 866
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 867
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 868
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    nop

    .line 873
    return-void

    .line 871
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    throw v1
.end method

.method public blacklist commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 811
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 812
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 813
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 814
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    invoke-static {p2, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    nop

    .line 826
    return-void

    .line 824
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    throw v1
.end method

.method public blacklist commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 831
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 832
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 833
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 834
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    invoke-static {p2, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 838
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 842
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    nop

    .line 847
    return-void

    .line 845
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    throw v1
.end method

.method public blacklist deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 730
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 731
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 732
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 738
    nop

    .line 739
    return-void

    .line 737
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 738
    throw v1
.end method

.method public blacklist deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 744
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 745
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 746
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 752
    nop

    .line 753
    return-void

    .line 751
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 752
    throw v1
.end method

.method public blacklist endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 930
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 931
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 932
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 936
    nop

    .line 937
    return-void

    .line 935
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 936
    throw v1
.end method

.method public blacklist finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 799
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 800
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 801
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    nop

    .line 806
    return-void

    .line 804
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    throw v1
.end method

.method public blacklist getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "reqModes"    # I
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 701
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 702
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 703
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 705
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 709
    nop

    .line 710
    return-void

    .line 708
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 709
    throw v1
.end method

.method public blacklist getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p3, "flags"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 715
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 716
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 717
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 718
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 720
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 724
    nop

    .line 725
    return-void

    .line 723
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 724
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 665
    const-string v0, "com.android.internal.view.IInputContext"

    return-object v0
.end method

.method public blacklist getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "flags"    # I
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1023
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1024
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1025
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1027
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1031
    nop

    .line 1032
    return-void

    .line 1030
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1031
    throw v1
.end method

.method public blacklist getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "flags"    # I
    .param p5, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1084
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1085
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1086
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1090
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1094
    nop

    .line 1095
    return-void

    .line 1093
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1094
    throw v1
.end method

.method public blacklist getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 686
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 687
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 688
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 691
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 695
    nop

    .line 696
    return-void

    .line 694
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 695
    throw v1
.end method

.method public blacklist getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 4
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 671
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 672
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 673
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 676
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    nop

    .line 681
    return-void

    .line 679
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    throw v1
.end method

.method public blacklist performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 905
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 906
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 907
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    nop

    .line 913
    return-void

    .line 911
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    throw v1
.end method

.method public blacklist performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "actionCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 892
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 893
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 894
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 899
    nop

    .line 900
    return-void

    .line 898
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 899
    throw v1
.end method

.method public blacklist performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 980
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 981
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 982
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 984
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 988
    nop

    .line 989
    return-void

    .line 987
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 988
    throw v1
.end method

.method public blacklist performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 968
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 969
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 970
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    nop

    .line 975
    return-void

    .line 973
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    throw v1
.end method

.method public blacklist requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "cursorUpdateMode"    # I
    .param p3, "imeDisplayId"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1037
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1038
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1039
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1042
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1046
    nop

    .line 1047
    return-void

    .line 1045
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1046
    throw v1
.end method

.method public blacklist requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "cursorUpdateMode"    # I
    .param p3, "cursorUpdateFilter"    # I
    .param p4, "imeDisplayId"    # I
    .param p5, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1052
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1053
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1054
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1058
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1062
    nop

    .line 1063
    return-void

    .line 1061
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1062
    throw v1
.end method

.method public blacklist sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 942
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 943
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 944
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 945
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 949
    nop

    .line 950
    return-void

    .line 948
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 949
    throw v1
.end method

.method public blacklist setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 994
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 996
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1002
    nop

    .line 1003
    return-void

    .line 1001
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1002
    throw v1
.end method

.method public blacklist setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1008
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1009
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1010
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1013
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1017
    nop

    .line 1018
    return-void

    .line 1016
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1017
    throw v1
.end method

.method public blacklist setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 758
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 759
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 760
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 761
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    invoke-static {p2, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 765
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 772
    nop

    .line 773
    return-void

    .line 771
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 772
    throw v1
.end method

.method public blacklist setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 778
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 779
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 780
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 781
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    invoke-static {p2, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 789
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 793
    nop

    .line 794
    return-void

    .line 792
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 793
    throw v1
.end method

.method public blacklist setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "imeConsumesInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1100
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1101
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1102
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1103
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1107
    nop

    .line 1108
    return-void

    .line 1106
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1107
    throw v1
.end method

.method public blacklist setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 878
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 879
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 880
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    iget-object v1, p0, Lcom/android/internal/view/IInputContext$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 886
    nop

    .line 887
    return-void

    .line 885
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 886
    throw v1
.end method
