.class public abstract Landroid/view/IDockedStackListener$Stub;
.super Landroid/os/Binder;
.source "IDockedStackListener.java"

# interfaces
.implements Landroid/view/IDockedStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDockedStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDockedStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IDockedStackListener"

.field static final greylist-max-o TRANSACTION_onAdjustedForImeChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onDividerVisibilityChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onDockSideChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onDockedStackExistsChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onDockedStackMinimizedChanged:I = 0x3


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.view.IDockedStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDockedStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "android.view.IDockedStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IDockedStackListener;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/view/IDockedStackListener;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Landroid/view/IDockedStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IDockedStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 105
    :pswitch_0
    const-string/jumbo v0, "onDockSideChanged"

    return-object v0

    .line 101
    :pswitch_1
    const-string/jumbo v0, "onAdjustedForImeChanged"

    return-object v0

    .line 97
    :pswitch_2
    const-string/jumbo v0, "onDockedStackMinimizedChanged"

    return-object v0

    .line 93
    :pswitch_3
    const-string/jumbo v0, "onDockedStackExistsChanged"

    return-object v0

    .line 89
    :pswitch_4
    const-string/jumbo v0, "onDividerVisibilityChanged"

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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 294
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 116
    invoke-static {p1}, Landroid/view/IDockedStackListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    const-string v0, "android.view.IDockedStackListener"

    .line 121
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 132
    packed-switch p1, :pswitch_data_1

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 128
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 175
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/view/IDockedStackListener$Stub;->onDockSideChanged(I)V

    .line 178
    goto :goto_0

    .line 165
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 167
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 168
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IDockedStackListener$Stub;->onAdjustedForImeChanged(ZJ)V

    .line 170
    goto :goto_0

    .line 153
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":J
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 155
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 157
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 158
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IDockedStackListener$Stub;->onDockedStackMinimizedChanged(ZJZ)V

    .line 160
    goto :goto_0

    .line 145
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 146
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Landroid/view/IDockedStackListener$Stub;->onDockedStackExistsChanged(Z)V

    .line 148
    goto :goto_0

    .line 137
    .end local v2    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 138
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Landroid/view/IDockedStackListener$Stub;->onDividerVisibilityChanged(Z)V

    .line 140
    nop

    .line 185
    .end local v2    # "_arg0":Z
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
