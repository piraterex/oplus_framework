.class public abstract Landroid/view/IDisplayWindowInsetsController$Stub;
.super Landroid/os/Binder;
.source "IDisplayWindowInsetsController.java"

# interfaces
.implements Landroid/view/IDisplayWindowInsetsController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayWindowInsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_hideInsets:I = 0x5

.field static final blacklist TRANSACTION_insetsChanged:I = 0x2

.field static final blacklist TRANSACTION_insetsControlChanged:I = 0x3

.field static final blacklist TRANSACTION_showInsets:I = 0x4

.field static final blacklist TRANSACTION_topFocusedWindowChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.view.IDisplayWindowInsetsController"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDisplayWindowInsetsController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    const-string v0, "android.view.IDisplayWindowInsetsController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IDisplayWindowInsetsController;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/view/IDisplayWindowInsetsController;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IDisplayWindowInsetsController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 75
    packed-switch p0, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 95
    :pswitch_0
    const-string/jumbo v0, "hideInsets"

    return-object v0

    .line 91
    :pswitch_1
    const-string/jumbo v0, "showInsets"

    return-object v0

    .line 87
    :pswitch_2
    const-string/jumbo v0, "insetsControlChanged"

    return-object v0

    .line 83
    :pswitch_3
    const-string/jumbo v0, "insetsChanged"

    return-object v0

    .line 79
    :pswitch_4
    const-string/jumbo v0, "topFocusedWindowChanged"

    return-object v0

    nop

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

    .line 70
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 277
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 106
    invoke-static {p1}, Landroid/view/IDisplayWindowInsetsController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 110
    const-string v0, "android.view.IDisplayWindowInsetsController"

    .line 111
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 112
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 122
    packed-switch p1, :pswitch_data_1

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 118
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 165
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 168
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->hideInsets(IZ)V

    .line 170
    goto :goto_0

    .line 155
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 158
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->showInsets(IZ)V

    .line 160
    goto :goto_0

    .line 145
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_3
    sget-object v2, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsState;

    .line 147
    .local v2, "_arg0":Landroid/view/InsetsState;
    sget-object v3, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/InsetsSourceControl;

    .line 148
    .local v3, "_arg1":[Landroid/view/InsetsSourceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    .line 150
    goto :goto_0

    .line 137
    .end local v2    # "_arg0":Landroid/view/InsetsState;
    .end local v3    # "_arg1":[Landroid/view/InsetsSourceControl;
    :pswitch_4
    sget-object v2, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsState;

    .line 138
    .restart local v2    # "_arg0":Landroid/view/InsetsState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Landroid/view/IDisplayWindowInsetsController$Stub;->insetsChanged(Landroid/view/InsetsState;)V

    .line 140
    goto :goto_0

    .line 127
    .end local v2    # "_arg0":Landroid/view/InsetsState;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsVisibilities;

    .line 130
    .local v3, "_arg1":Landroid/view/InsetsVisibilities;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->topFocusedWindowChanged(Ljava/lang/String;Landroid/view/InsetsVisibilities;)V

    .line 132
    nop

    .line 177
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/view/InsetsVisibilities;
    :goto_0
    return v1

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
