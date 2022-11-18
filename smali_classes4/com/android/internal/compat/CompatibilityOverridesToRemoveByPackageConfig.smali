.class public final Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;
.super Ljava/lang/Object;
.source "CompatibilityOverridesToRemoveByPackageConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist packageNameToOverridesToRemove:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig$1;

    invoke-direct {v0}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig$1;-><init>()V

    sput-object v0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 42
    .local v0, "keyCount":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    sget-object v4, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 45
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "packageNameToOverridesToRemove":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method
