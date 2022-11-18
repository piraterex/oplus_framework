.class Lcom/android/internal/app/ChooserActivity$AzInfoComparator;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AzInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mCollator:Ljava/text/Collator;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 2488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2489
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;->mCollator:Ljava/text/Collator;

    .line 2490
    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;)I
    .locals 3
    .param p1, "lhsp"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 2495
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2486
    check-cast p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    check-cast p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;->compare(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;)I

    move-result p1

    return p1
.end method
