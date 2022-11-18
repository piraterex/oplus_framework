.class public abstract Landroid/window/ITaskFragmentOrganizerController$Stub;
.super Landroid/os/Binder;
.source "ITaskFragmentOrganizerController.java"

# interfaces
.implements Landroid/window/ITaskFragmentOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskFragmentOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITaskFragmentOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_isActivityEmbedded:I = 0x5

.field static final blacklist TRANSACTION_registerOrganizer:I = 0x1

.field static final blacklist TRANSACTION_registerRemoteAnimations:I = 0x3

.field static final blacklist TRANSACTION_unregisterOrganizer:I = 0x2

.field static final blacklist TRANSACTION_unregisterRemoteAnimations:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.window.ITaskFragmentOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/ITaskFragmentOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizerController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    const-string v0, "android.window.ITaskFragmentOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/window/ITaskFragmentOrganizerController;

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/window/ITaskFragmentOrganizerController;

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Landroid/window/ITaskFragmentOrganizerController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/ITaskFragmentOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_0
    const-string v0, "isActivityEmbedded"

    return-object v0

    .line 90
    :pswitch_1
    const-string/jumbo v0, "unregisterRemoteAnimations"

    return-object v0

    .line 86
    :pswitch_2
    const-string/jumbo v0, "registerRemoteAnimations"

    return-object v0

    .line 82
    :pswitch_3
    const-string/jumbo v0, "unregisterOrganizer"

    return-object v0

    .line 78
    :pswitch_4
    const-string/jumbo v0, "registerOrganizer"

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

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 299
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Landroid/window/ITaskFragmentOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    const-string v0, "android.window.ITaskFragmentOrganizerController"

    .line 110
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 121
    packed-switch p1, :pswitch_data_1

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 117
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 168
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 169
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizerController$Stub;->isActivityEmbedded(Landroid/os/IBinder;)Z

    move-result v3

    .line 171
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 173
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    .line 159
    .local v2, "_arg0":Landroid/window/ITaskFragmentOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3}, Landroid/window/ITaskFragmentOrganizerController$Stub;->unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;I)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_0

    .line 144
    .end local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    .line 146
    .restart local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 148
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/RemoteAnimationDefinition;

    .line 149
    .local v4, "_arg2":Landroid/view/RemoteAnimationDefinition;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3, v4}, Landroid/window/ITaskFragmentOrganizerController$Stub;->registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;ILandroid/view/RemoteAnimationDefinition;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_0

    .line 135
    .end local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/RemoteAnimationDefinition;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    .line 136
    .restart local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizerController$Stub;->unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_0

    .line 126
    .end local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    .line 127
    .restart local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/window/ITaskFragmentOrganizerController$Stub;->registerOrganizer(Landroid/window/ITaskFragmentOrganizer;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    nop

    .line 180
    .end local v2    # "_arg0":Landroid/window/ITaskFragmentOrganizer;
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
