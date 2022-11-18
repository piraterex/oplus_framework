.class public Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;
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
    name = "ForInternedStringSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 199
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist parcel(Ljava/util/Set;Landroid/os/Parcel;I)V
    .locals 2
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 202
    .local p1, "item":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 203
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 205
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    .end local v1    # "string":Ljava/lang/String;
    goto :goto_0

    .line 210
    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Ljava/util/Set;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .local v0, "size":I
    if-gez v0, :cond_0

    .line 216
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 218
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 219
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "count":I
    :cond_1
    return-object v1
.end method
