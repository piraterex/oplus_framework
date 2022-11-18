.class Landroid/app/admin/FactoryResetProtectionPolicy$1;
.super Ljava/lang/Object;
.source "FactoryResetProtectionPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/FactoryResetProtectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/FactoryResetProtectionPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "factoryResetProtectionAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    .local v1, "accountsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 187
    .local v2, "factoryResetProtectionEnabled":Z
    new-instance v3, Landroid/app/admin/FactoryResetProtectionPolicy;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v4}, Landroid/app/admin/FactoryResetProtectionPolicy;-><init>(Ljava/util/List;ZLandroid/app/admin/FactoryResetProtectionPolicy-IA;)V

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Landroid/app/admin/FactoryResetProtectionPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/FactoryResetProtectionPolicy;
    .locals 1
    .param p1, "size"    # I

    .line 193
    new-array v0, p1, [Landroid/app/admin/FactoryResetProtectionPolicy;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Landroid/app/admin/FactoryResetProtectionPolicy$1;->newArray(I)[Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object p1

    return-object p1
.end method
