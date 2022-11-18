.class public abstract Landroid/app/ISearchManager$Stub;
.super Landroid/os/Binder;
.source "ISearchManager.java"

# interfaces
.implements Landroid/app/ISearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ISearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ISearchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.ISearchManager"

.field static final greylist-max-o TRANSACTION_getGlobalSearchActivities:I = 0x3

.field static final greylist-max-o TRANSACTION_getGlobalSearchActivity:I = 0x4

.field static final greylist-max-o TRANSACTION_getSearchableInfo:I = 0x1

.field static final greylist-max-o TRANSACTION_getSearchablesInGlobalSearch:I = 0x2

.field static final greylist-max-o TRANSACTION_getWebSearchActivity:I = 0x5

.field static final greylist-max-o TRANSACTION_launchAssist:I = 0x6


# direct methods
.method public constructor greylist-max-p <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ISearchManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    const-string v0, "android.app.ISearchManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ISearchManager;

    if-eqz v1, :cond_1

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/app/ISearchManager;

    return-object v1

    .line 60
    :cond_1
    new-instance v1, Landroid/app/ISearchManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ISearchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_0
    const-string v0, "launchAssist"

    return-object v0

    .line 89
    :pswitch_1
    const-string v0, "getWebSearchActivity"

    return-object v0

    .line 85
    :pswitch_2
    const-string v0, "getGlobalSearchActivity"

    return-object v0

    .line 81
    :pswitch_3
    const-string v0, "getGlobalSearchActivities"

    return-object v0

    .line 77
    :pswitch_4
    const-string v0, "getSearchablesInGlobalSearch"

    return-object v0

    .line 73
    :pswitch_5
    const-string v0, "getSearchableInfo"

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

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 306
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 104
    invoke-static {p1}, Landroid/app/ISearchManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 108
    const-string v0, "android.app.ISearchManager"

    .line 109
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 120
    packed-switch p1, :pswitch_data_1

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 116
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v1

    .line 163
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 166
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3}, Landroid/app/ISearchManager$Stub;->launchAssist(ILandroid/os/Bundle;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_0

    .line 155
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 156
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 158
    goto :goto_0

    .line 148
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 149
    .restart local v2    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    goto :goto_0

    .line 141
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getGlobalSearchActivities()Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 144
    goto :goto_0

    .line 134
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 137
    goto :goto_0

    .line 125
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    :pswitch_6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 126
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/app/ISearchManager$Stub;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    .line 128
    .local v3, "_result":Landroid/app/SearchableInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 130
    nop

    .line 176
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/SearchableInfo;
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
