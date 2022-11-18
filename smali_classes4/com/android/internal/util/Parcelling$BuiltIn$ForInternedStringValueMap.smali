.class public Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;
.super Ljava/lang/Object;
.source "Parcelling.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/Parcelling$BuiltIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForInternedStringValueMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 155
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->parcel(Ljava/util/Map;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist parcel(Ljava/util/Map;Landroid/os/Parcel;I)V
    .locals 0
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 158
    .local p1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 159
    return-void
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->unparcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 164
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 165
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 166
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "index":I
    :cond_0
    return-object v0
.end method
