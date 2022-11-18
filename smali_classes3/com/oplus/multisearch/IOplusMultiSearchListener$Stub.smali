.class public abstract Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;
.super Landroid/os/Binder;
.source "IOplusMultiSearchListener.java"

# interfaces
.implements Lcom/oplus/multisearch/IOplusMultiSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/multisearch/IOplusMultiSearchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBackPressedOnTaskRoot:I = 0x1

.field static final blacklist TRANSACTION_onTaskAppeared:I = 0x2

.field static final blacklist TRANSACTION_onTaskInfoChanged:I = 0x3

.field static final blacklist TRANSACTION_onTaskVanished:I = 0x4


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.oplus.multisearch.IOplusMultiSearchListener"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/multisearch/IOplusMultiSearchListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "com.oplus.multisearch.IOplusMultiSearchListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/multisearch/IOplusMultiSearchListener;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/oplus/multisearch/IOplusMultiSearchListener;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 57
    packed-switch p0, :pswitch_data_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_0
    const-string/jumbo v0, "onTaskVanished"

    return-object v0

    .line 69
    :pswitch_1
    const-string/jumbo v0, "onTaskInfoChanged"

    return-object v0

    .line 65
    :pswitch_2
    const-string/jumbo v0, "onTaskAppeared"

    return-object v0

    .line 61
    :pswitch_3
    const-string/jumbo v0, "onBackPressedOnTaskRoot"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 215
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    const-string v0, "com.oplus.multisearch.IOplusMultiSearchListener"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 100
    packed-switch p1, :pswitch_data_1

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 131
    :pswitch_1
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 132
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2}, Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 134
    goto :goto_0

    .line 123
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_2
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 124
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 126
    goto :goto_0

    .line 113
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_3
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 115
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 116
    .local v3, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2, v3}, Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 118
    goto :goto_0

    .line 105
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":Landroid/view/SurfaceControl;
    :pswitch_4
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 106
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2}, Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 108
    nop

    .line 141
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
