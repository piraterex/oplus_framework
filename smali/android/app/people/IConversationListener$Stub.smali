.class public abstract Landroid/app/people/IConversationListener$Stub;
.super Landroid/os/Binder;
.source "IConversationListener.java"

# interfaces
.implements Landroid/app/people/IConversationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/IConversationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/IConversationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConversationUpdate:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "android.app.people.IConversationListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/people/IConversationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/people/IConversationListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    const-string v0, "android.app.people.IConversationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/people/IConversationListener;

    if-eqz v1, :cond_1

    .line 42
    move-object v1, v0

    check-cast v1, Landroid/app/people/IConversationListener;

    return-object v1

    .line 44
    :cond_1
    new-instance v1, Landroid/app/people/IConversationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/people/IConversationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 53
    packed-switch p0, :pswitch_data_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 57
    :pswitch_0
    const-string/jumbo v0, "onConversationUpdate"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 48
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 68
    invoke-static {p1}, Landroid/app/people/IConversationListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 72
    const-string v0, "android.app.people.IConversationListener"

    .line 73
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 84
    packed-switch p1, :pswitch_data_1

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 80
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return v1

    .line 89
    :pswitch_1
    sget-object v2, Landroid/app/people/ConversationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/people/ConversationChannel;

    .line 90
    .local v2, "_arg0":Landroid/app/people/ConversationChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 91
    invoke-virtual {p0, v2}, Landroid/app/people/IConversationListener$Stub;->onConversationUpdate(Landroid/app/people/ConversationChannel;)V

    .line 92
    nop

    .line 99
    .end local v2    # "_arg0":Landroid/app/people/ConversationChannel;
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
