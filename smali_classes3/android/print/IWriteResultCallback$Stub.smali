.class public abstract Landroid/print/IWriteResultCallback$Stub;
.super Landroid/os/Binder;
.source "IWriteResultCallback.java"

# interfaces
.implements Landroid/print/IWriteResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IWriteResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IWriteResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.print.IWriteResultCallback"

.field static final greylist-max-o TRANSACTION_onWriteCanceled:I = 0x4

.field static final greylist-max-o TRANSACTION_onWriteFailed:I = 0x3

.field static final greylist-max-o TRANSACTION_onWriteFinished:I = 0x2

.field static final greylist-max-o TRANSACTION_onWriteStarted:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.print.IWriteResultCallback"

    invoke-virtual {p0, p0, v0}, Landroid/print/IWriteResultCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/print/IWriteResultCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "android.print.IWriteResultCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IWriteResultCallback;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/print/IWriteResultCallback;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Landroid/print/IWriteResultCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IWriteResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_0
    const-string/jumbo v0, "onWriteCanceled"

    return-object v0

    .line 74
    :pswitch_1
    const-string/jumbo v0, "onWriteFailed"

    return-object v0

    .line 70
    :pswitch_2
    const-string/jumbo v0, "onWriteFinished"

    return-object v0

    .line 66
    :pswitch_3
    const-string/jumbo v0, "onWriteStarted"

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

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 233
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/print/IWriteResultCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    const-string v0, "android.print.IWriteResultCallback"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 105
    packed-switch p1, :pswitch_data_1

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 140
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Landroid/print/IWriteResultCallback$Stub;->onWriteCanceled(I)V

    .line 143
    goto :goto_0

    .line 130
    .end local v2    # "_arg0":I
    :pswitch_2
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 132
    .local v2, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2, v3}, Landroid/print/IWriteResultCallback$Stub;->onWriteFailed(Ljava/lang/CharSequence;I)V

    .line 135
    goto :goto_0

    .line 120
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    .end local v3    # "_arg1":I
    :pswitch_3
    sget-object v2, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/print/PageRange;

    .line 122
    .local v2, "_arg0":[Landroid/print/PageRange;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 123
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2, v3}, Landroid/print/IWriteResultCallback$Stub;->onWriteFinished([Landroid/print/PageRange;I)V

    .line 125
    goto :goto_0

    .line 110
    .end local v2    # "_arg0":[Landroid/print/PageRange;
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v2

    .line 112
    .local v2, "_arg0":Landroid/os/ICancellationSignal;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 113
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2, v3}, Landroid/print/IWriteResultCallback$Stub;->onWriteStarted(Landroid/os/ICancellationSignal;I)V

    .line 115
    nop

    .line 150
    .end local v2    # "_arg0":Landroid/os/ICancellationSignal;
    .end local v3    # "_arg1":I
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
