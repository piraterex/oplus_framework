.class Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;
.super Ljava/util/ArrayList;
.source "Strings.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/StringList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/util/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/internal/org/bouncycastle/util/StringList;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .locals 0

    .line 302
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->add(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist add(ILjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    .line 318
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 319
    return-void
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .locals 0

    .line 302
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->add(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist add(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 308
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist get(I)Ljava/lang/String;
    .locals 0

    .line 302
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 302
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    .line 313
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist toStringArray()[Ljava/lang/String;
    .locals 3

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 325
    .local v0, "strs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public blacklist toStringArray(II)[Ljava/lang/String;
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 335
    sub-int v0, p2, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 337
    .local v0, "strs":[Ljava/lang/String;
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    if-eq v1, p2, :cond_0

    .line 339
    sub-int v2, v1, p1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
