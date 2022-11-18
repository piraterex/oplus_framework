.class public Lcom/android/internal/util/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(TT;TT;)I"
        }
    .end annotation

    .line 43
    .local p0, "a":Ljava/lang/Comparable;, "TT;"
    .local p1, "b":Ljava/lang/Comparable;, "TT;"
    if-eqz p0, :cond_1

    .line 44
    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 46
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static blacklist firstNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 36
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 55
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p1, "otherwise":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method
