.class Landroid/view/View$MatchLabelForPredicate;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchLabelForPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mLabeledId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmLabeledId(Landroid/view/View$MatchLabelForPredicate;I)V
    .locals 0

    iput p1, p0, Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 31153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View$MatchLabelForPredicate-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$MatchLabelForPredicate;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o test(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 31158
    invoke-static {p1}, Landroid/view/View;->-$$Nest$fgetmLabelForId(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    .line 31153
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View$MatchLabelForPredicate;->test(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
