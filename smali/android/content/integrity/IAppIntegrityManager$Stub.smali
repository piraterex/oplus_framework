.class public abstract Landroid/content/integrity/IAppIntegrityManager$Stub;
.super Landroid/os/Binder;
.source "IAppIntegrityManager.java"

# interfaces
.implements Landroid/content/integrity/IAppIntegrityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/IAppIntegrityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/IAppIntegrityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCurrentRuleSetProvider:I = 0x3

.field static final blacklist TRANSACTION_getCurrentRuleSetVersion:I = 0x2

.field static final blacklist TRANSACTION_getCurrentRules:I = 0x4

.field static final blacklist TRANSACTION_getWhitelistedRuleProviders:I = 0x5

.field static final blacklist TRANSACTION_updateRuleSet:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.content.integrity.IAppIntegrityManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/integrity/IAppIntegrityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    const-string v0, "android.content.integrity.IAppIntegrityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/integrity/IAppIntegrityManager;

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/content/integrity/IAppIntegrityManager;

    return-object v1

    .line 56
    :cond_1
    new-instance v1, Landroid/content/integrity/IAppIntegrityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/integrity/IAppIntegrityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_0
    const-string v0, "getWhitelistedRuleProviders"

    return-object v0

    .line 81
    :pswitch_1
    const-string v0, "getCurrentRules"

    return-object v0

    .line 77
    :pswitch_2
    const-string v0, "getCurrentRuleSetProvider"

    return-object v0

    .line 73
    :pswitch_3
    const-string v0, "getCurrentRuleSetVersion"

    return-object v0

    .line 69
    :pswitch_4
    const-string/jumbo v0, "updateRuleSet"

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

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 271
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    const-string v0, "android.content.integrity.IAppIntegrityManager"

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 112
    packed-switch p1, :pswitch_data_1

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 150
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getWhitelistedRuleProviders()Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 153
    goto :goto_0

    .line 143
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getCurrentRules()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 144
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 146
    goto :goto_0

    .line 136
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getCurrentRuleSetProvider()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    goto :goto_0

    .line 129
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->getCurrentRuleSetVersion()Ljava/lang/String;

    move-result-object v2

    .line 130
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    goto :goto_0

    .line 117
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 121
    .local v3, "_arg1":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 122
    .local v4, "_arg2":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/integrity/IAppIntegrityManager$Stub;->updateRuleSet(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    nop

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/integrity/Rule;>;"
    .end local v4    # "_arg2":Landroid/content/IntentSender;
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
