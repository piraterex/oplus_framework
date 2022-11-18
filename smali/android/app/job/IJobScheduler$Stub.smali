.class public abstract Landroid/app/job/IJobScheduler$Stub;
.super Landroid/os/Binder;
.source "IJobScheduler.java"

# interfaces
.implements Landroid/app/job/IJobScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobScheduler$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobScheduler"

.field static final greylist-max-o TRANSACTION_cancel:I = 0x4

.field static final greylist-max-o TRANSACTION_cancelAll:I = 0x5

.field static final greylist-max-o TRANSACTION_enqueue:I = 0x2

.field static final blacklist TRANSACTION_getAllJobSnapshots:I = 0x9

.field static final greylist-max-o TRANSACTION_getAllPendingJobs:I = 0x6

.field static final greylist-max-o TRANSACTION_getPendingJob:I = 0x7

.field static final blacklist TRANSACTION_getStartedJobs:I = 0x8

.field static final greylist-max-o TRANSACTION_schedule:I = 0x1

.field static final greylist-max-o TRANSACTION_scheduleAsPackage:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.app.job.IJobScheduler"

    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobScheduler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobScheduler;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    const-string v0, "android.app.job.IJobScheduler"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/job/IJobScheduler;

    if-eqz v1, :cond_1

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/app/job/IJobScheduler;

    return-object v1

    .line 74
    :cond_1
    new-instance v1, Landroid/app/job/IJobScheduler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/job/IJobScheduler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_0
    const-string v0, "getAllJobSnapshots"

    return-object v0

    .line 115
    :pswitch_1
    const-string v0, "getStartedJobs"

    return-object v0

    .line 111
    :pswitch_2
    const-string v0, "getPendingJob"

    return-object v0

    .line 107
    :pswitch_3
    const-string v0, "getAllPendingJobs"

    return-object v0

    .line 103
    :pswitch_4
    const-string v0, "cancelAll"

    return-object v0

    .line 99
    :pswitch_5
    const-string v0, "cancel"

    return-object v0

    .line 95
    :pswitch_6
    const-string/jumbo v0, "scheduleAsPackage"

    return-object v0

    .line 91
    :pswitch_7
    const-string v0, "enqueue"

    return-object v0

    .line 87
    :pswitch_8
    const-string/jumbo v0, "schedule"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 424
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Landroid/app/job/IJobScheduler$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const-string v0, "android.app.job.IJobScheduler"

    .line 135
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 146
    packed-switch p1, :pswitch_data_1

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 142
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 227
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 228
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 230
    goto/16 :goto_0

    .line 220
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->getStartedJobs()Ljava/util/List;

    move-result-object v2

    .line 221
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 223
    goto/16 :goto_0

    .line 211
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Landroid/app/job/IJobScheduler$Stub;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v3

    .line 214
    .local v3, "_result":Landroid/app/job/JobInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    goto/16 :goto_0

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/app/job/JobInfo;
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->getAllPendingJobs()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 204
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_0

    .line 197
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->cancelAll()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_0

    .line 189
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2}, Landroid/app/job/IJobScheduler$Stub;->cancel(I)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    goto :goto_0

    .line 173
    .end local v2    # "_arg0":I
    :pswitch_7
    sget-object v2, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 175
    .local v2, "_arg0":Landroid/app/job/JobInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 179
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/job/IJobScheduler$Stub;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 182
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    goto :goto_0

    .line 161
    .end local v2    # "_arg0":Landroid/app/job/JobInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":I
    :pswitch_8
    sget-object v2, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 163
    .restart local v2    # "_arg0":Landroid/app/job/JobInfo;
    sget-object v3, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    .line 164
    .local v3, "_arg1":Landroid/app/job/JobWorkItem;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobScheduler$Stub;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result v4

    .line 166
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    goto :goto_0

    .line 151
    .end local v2    # "_arg0":Landroid/app/job/JobInfo;
    .end local v3    # "_arg1":Landroid/app/job/JobWorkItem;
    .end local v4    # "_result":I
    :pswitch_9
    sget-object v2, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 152
    .restart local v2    # "_arg0":Landroid/app/job/JobInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Landroid/app/job/IJobScheduler$Stub;->schedule(Landroid/app/job/JobInfo;)I

    move-result v3

    .line 154
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    nop

    .line 237
    .end local v2    # "_arg0":Landroid/app/job/JobInfo;
    .end local v3    # "_result":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
