.class public Lcom/oplus/app/OplusAppDynamicFeatureData;
.super Ljava/lang/Object;
.source "OplusAppDynamicFeatureData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/app/OplusAppDynamicFeatureData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist mActivityName:Ljava/lang/String;

.field public whitelist mComponentNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist mDatabaseNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist mIdNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist mPackageName:Ljava/lang/String;

.field public whitelist mTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/oplus/app/OplusAppDynamicFeatureData$1;

    invoke-direct {v0}, Lcom/oplus/app/OplusAppDynamicFeatureData$1;-><init>()V

    sput-object v0, Lcom/oplus/app/OplusAppDynamicFeatureData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mComponentNames:Ljava/util/Map;

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mIdNames:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mDatabaseNames:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mTexts:Ljava/util/List;

    .line 42
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mComponentNames:Ljava/util/Map;

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mIdNames:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mDatabaseNames:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mTexts:Ljava/util/List;

    .line 58
    invoke-virtual {p0, p1}, Lcom/oplus/app/OplusAppDynamicFeatureData;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/app/OplusAppDynamicFeatureData;)V
    .locals 2
    .param p1, "data"    # Lcom/oplus/app/OplusAppDynamicFeatureData;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mComponentNames:Ljava/util/Map;

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mIdNames:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mDatabaseNames:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mTexts:Ljava/util/List;

    .line 45
    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p1, Lcom/oplus/app/OplusAppDynamicFeatureData;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mPackageName:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/oplus/app/OplusAppDynamicFeatureData;->mActivityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mActivityName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mComponentNames:Ljava/util/Map;

    iget-object v1, p1, Lcom/oplus/app/OplusAppDynamicFeatureData;->mComponentNames:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mIdNames:Ljava/util/Map;

    iget-object v1, p1, Lcom/oplus/app/OplusAppDynamicFeatureData;->mIdNames:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 52
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mDatabaseNames:Ljava/util/List;

    iget-object v1, p1, Lcom/oplus/app/OplusAppDynamicFeatureData;->mDatabaseNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mTexts:Ljava/util/List;

    iget-object v1, p1, Lcom/oplus/app/OplusAppDynamicFeatureData;->mTexts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActivityName()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getComponentNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mComponentNames:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getDatabaseNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mDatabaseNames:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getIdNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mIdNames:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mTexts:Ljava/util/List;

    return-object v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mPackageName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mActivityName:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mComponentNames:Ljava/util/Map;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 66
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mIdNames:Ljava/util/Map;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 68
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mDatabaseNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mTexts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 70
    return-void
.end method

.method public whitelist setActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityName"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mActivityName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public whitelist setComponentNames(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "componentNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mComponentNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 133
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mComponentNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method public whitelist setDatabaseNames(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p1, "databaseNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mDatabaseNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mDatabaseNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    return-void
.end method

.method public whitelist setIdNames(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "idNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mIdNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mIdNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method public whitelist setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mPackageName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public whitelist setTexts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p1, "texts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusAppDynamicFeatureData{package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mComponentNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mIdNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", databaseName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mDatabaseNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mTexts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mComponentNames:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 95
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mIdNames:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 97
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mDatabaseNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureData;->mTexts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 99
    return-void
.end method
