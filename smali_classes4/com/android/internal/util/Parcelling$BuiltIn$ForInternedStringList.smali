.class public Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;
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
    name = "ForInternedStringList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 136
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist parcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .locals 0
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 139
    .local p1, "item":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 140
    return-void
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Ljava/util/List;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 145
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 147
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 148
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "size":I
    .end local v2    # "index":I
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
