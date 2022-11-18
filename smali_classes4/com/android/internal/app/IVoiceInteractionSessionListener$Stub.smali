.class public abstract Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionSessionListener.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractionSessionListener"

.field static final blacklist TRANSACTION_onSetUiHints:I = 0x4

.field static final greylist-max-o TRANSACTION_onVoiceSessionHidden:I = 0x2

.field static final greylist-max-o TRANSACTION_onVoiceSessionShown:I = 0x1

.field static final blacklist TRANSACTION_onVoiceSessionWindowVisibilityChanged:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.android.internal.app.IVoiceInteractionSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "com.android.internal.app.IVoiceInteractionSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractionSessionListener;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionListener;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_0
    const-string/jumbo v0, "onSetUiHints"

    return-object v0

    .line 73
    :pswitch_1
    const-string/jumbo v0, "onVoiceSessionWindowVisibilityChanged"

    return-object v0

    .line 69
    :pswitch_2
    const-string/jumbo v0, "onVoiceSessionHidden"

    return-object v0

    .line 65
    :pswitch_3
    const-string/jumbo v0, "onVoiceSessionShown"

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

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 213
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const-string v0, "com.android.internal.app.IVoiceInteractionSessionListener"

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 104
    packed-switch p1, :pswitch_data_1

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 100
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 127
    :pswitch_1
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 128
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->onSetUiHints(Landroid/os/Bundle;)V

    .line 130
    goto :goto_0

    .line 119
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 120
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->onVoiceSessionWindowVisibilityChanged(Z)V

    .line 122
    goto :goto_0

    .line 113
    .end local v2    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->onVoiceSessionHidden()V

    .line 114
    goto :goto_0

    .line 108
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->onVoiceSessionShown()V

    .line 109
    nop

    .line 137
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
