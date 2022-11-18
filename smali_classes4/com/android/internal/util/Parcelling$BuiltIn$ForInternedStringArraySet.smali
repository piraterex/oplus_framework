.class public Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;
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
    name = "ForInternedStringArraySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Landroid/util/ArraySet<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parcel(Landroid/util/ArraySet;Landroid/os/Parcel;I)V
    .locals 2
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 229
    .local p1, "item":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 230
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    .end local v1    # "string":Ljava/lang/String;
    goto :goto_0

    .line 237
    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 226
    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;->parcel(Landroid/util/ArraySet;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Landroid/util/ArraySet;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    .local v0, "size":I
    if-gez v0, :cond_0

    .line 243
    const/4 v1, 0x0

    return-object v1

    .line 245
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 246
    .local v1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "count":I
    :cond_1
    return-object v1
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;->unparcel(Landroid/os/Parcel;)Landroid/util/ArraySet;

    move-result-object p1

    return-object p1
.end method
