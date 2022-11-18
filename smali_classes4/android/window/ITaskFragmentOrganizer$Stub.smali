.class public abstract Landroid/window/ITaskFragmentOrganizer$Stub;
.super Landroid/os/Binder;
.source "ITaskFragmentOrganizer.java"

# interfaces
.implements Landroid/window/ITaskFragmentOrganizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskFragmentOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskFragmentOrganizer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onActivityReparentToTask:I = 0x6

.field static final blacklist TRANSACTION_onTaskFragmentAppeared:I = 0x1

.field static final blacklist TRANSACTION_onTaskFragmentError:I = 0x5

.field static final blacklist TRANSACTION_onTaskFragmentInfoChanged:I = 0x2

.field static final blacklist TRANSACTION_onTaskFragmentParentInfoChanged:I = 0x4

.field static final blacklist TRANSACTION_onTaskFragmentVanished:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "android.window.ITaskFragmentOrganizer"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "android.window.ITaskFragmentOrganizer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/window/ITaskFragmentOrganizer;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/window/ITaskFragmentOrganizer;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Landroid/window/ITaskFragmentOrganizer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITaskFragmentOrganizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 96
    packed-switch p0, :pswitch_data_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 120
    :pswitch_0
    const-string/jumbo v0, "onActivityReparentToTask"

    return-object v0

    .line 116
    :pswitch_1
    const-string/jumbo v0, "onTaskFragmentError"

    return-object v0

    .line 112
    :pswitch_2
    const-string/jumbo v0, "onTaskFragmentParentInfoChanged"

    return-object v0

    .line 108
    :pswitch_3
    const-string/jumbo v0, "onTaskFragmentVanished"

    return-object v0

    .line 104
    :pswitch_4
    const-string/jumbo v0, "onTaskFragmentInfoChanged"

    return-object v0

    .line 100
    :pswitch_5
    const-string/jumbo v0, "onTaskFragmentAppeared"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 91
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 345
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 131
    invoke-static {p1}, Landroid/window/ITaskFragmentOrganizer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 135
    const-string v0, "android.window.ITaskFragmentOrganizer"

    .line 136
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 137
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 147
    packed-switch p1, :pswitch_data_1

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 143
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return v1

    .line 196
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 200
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 201
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2, v3, v4}, Landroid/window/ITaskFragmentOrganizer$Stub;->onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 203
    goto :goto_0

    .line 186
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 188
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 189
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentError(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 191
    goto :goto_0

    .line 176
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 178
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    .line 179
    .local v3, "_arg1":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 181
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/content/res/Configuration;
    :pswitch_4
    sget-object v2, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentInfo;

    .line 169
    .local v2, "_arg0":Landroid/window/TaskFragmentInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V

    .line 171
    goto :goto_0

    .line 160
    .end local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    :pswitch_5
    sget-object v2, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentInfo;

    .line 161
    .restart local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V

    .line 163
    goto :goto_0

    .line 152
    .end local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    :pswitch_6
    sget-object v2, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentInfo;

    .line 153
    .restart local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V

    .line 155
    nop

    .line 210
    .end local v2    # "_arg0":Landroid/window/TaskFragmentInfo;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
