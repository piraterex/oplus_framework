.class Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;
.super Ljava/lang/Object;
.source "ApkLiteParseUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/parsing/ApkLiteParseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplitNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 771
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    .line 774
    if-nez p1, :cond_0

    .line 775
    const/4 v0, -0x1

    return v0

    .line 776
    :cond_0
    if-nez p2, :cond_1

    .line 777
    const/4 v0, 0x1

    return v0

    .line 779
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
