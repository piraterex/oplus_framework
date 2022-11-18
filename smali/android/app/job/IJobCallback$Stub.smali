.class public abstract Landroid/app/job/IJobCallback$Stub;
.super Landroid/os/Binder;
.source "IJobCallback.java"

# interfaces
.implements Landroid/app/job/IJobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobCallback"

.field static final greylist-max-o TRANSACTION_acknowledgeStartMessage:I = 0x1

.field static final greylist-max-o TRANSACTION_acknowledgeStopMessage:I = 0x2

.field static final greylist-max-o TRANSACTION_completeWork:I = 0x4

.field static final greylist-max-o TRANSACTION_dequeueWork:I = 0x3

.field static final greylist-max-o TRANSACTION_jobFinished:I = 0x5


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "android.app.job.IJobCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    const-string v0, "android.app.job.IJobCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/job/IJobCallback;

    if-eqz v1, :cond_1

    .line 83
    move-object v1, v0

    check-cast v1, Landroid/app/job/IJobCallback;

    return-object v1

    .line 85
    :cond_1
    new-instance v1, Landroid/app/job/IJobCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/job/IJobCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 94
    packed-switch p0, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 114
    :pswitch_0
    const-string v0, "jobFinished"

    return-object v0

    .line 110
    :pswitch_1
    const-string v0, "completeWork"

    return-object v0

    .line 106
    :pswitch_2
    const-string v0, "dequeueWork"

    return-object v0

    .line 102
    :pswitch_3
    const-string v0, "acknowledgeStopMessage"

    return-object v0

    .line 98
    :pswitch_4
    const-string v0, "acknowledgeStartMessage"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 89
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 337
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 125
    invoke-static {p1}, Landroid/app/job/IJobCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const-string v0, "android.app.job.IJobCallback"

    .line 130
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 131
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 141
    packed-switch p1, :pswitch_data_1

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 137
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v1

    .line 190
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 193
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobCallback$Stub;->jobFinished(IZ)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto :goto_0

    .line 178
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 181
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobCallback$Stub;->completeWork(II)Z

    move-result v4

    .line 183
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 185
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Landroid/app/job/IJobCallback$Stub;->dequeueWork(I)Landroid/app/job/JobWorkItem;

    move-result-object v3

    .line 171
    .local v3, "_result":Landroid/app/job/JobWorkItem;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 173
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/app/job/JobWorkItem;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 160
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStopMessage(IZ)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 149
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStartMessage(IZ)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    nop

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
