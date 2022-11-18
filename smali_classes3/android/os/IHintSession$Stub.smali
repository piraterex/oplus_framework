.class public abstract Landroid/os/IHintSession$Stub;
.super Landroid/os/Binder;
.source "IHintSession.java"

# interfaces
.implements Landroid/os/IHintSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHintSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x3

.field static final blacklist TRANSACTION_reportActualWorkDuration:I = 0x2

.field static final blacklist TRANSACTION_updateTargetWorkDuration:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.os.IHintSession"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHintSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    const-string v0, "android.os.IHintSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IHintSession;

    if-eqz v1, :cond_1

    .line 44
    move-object v1, v0

    check-cast v1, Landroid/os/IHintSession;

    return-object v1

    .line 46
    :cond_1
    new-instance v1, Landroid/os/IHintSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IHintSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 55
    packed-switch p0, :pswitch_data_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 67
    :pswitch_0
    const-string v0, "close"

    return-object v0

    .line 63
    :pswitch_1
    const-string/jumbo v0, "reportActualWorkDuration"

    return-object v0

    .line 59
    :pswitch_2
    const-string/jumbo v0, "updateTargetWorkDuration"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 50
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 184
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 78
    invoke-static {p1}, Landroid/os/IHintSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 82
    const-string v0, "android.os.IHintSession"

    .line 83
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 94
    packed-switch p1, :pswitch_data_1

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 90
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 116
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/IHintSession$Stub;->close()V

    .line 117
    goto :goto_0

    .line 107
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 109
    .local v2, "_arg0":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    .line 110
    .local v3, "_arg1":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2, v3}, Landroid/os/IHintSession$Stub;->reportActualWorkDuration([J[J)V

    .line 112
    goto :goto_0

    .line 99
    .end local v2    # "_arg0":[J
    .end local v3    # "_arg1":[J
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 100
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2, v3}, Landroid/os/IHintSession$Stub;->updateTargetWorkDuration(J)V

    .line 102
    nop

    .line 124
    .end local v2    # "_arg0":J
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
