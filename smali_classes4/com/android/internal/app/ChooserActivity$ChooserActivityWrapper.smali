.class Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/IChooserActivityWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooserActivityWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    .line 4202
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method


# virtual methods
.method public blacklist addActionButton(Landroid/view/ViewGroup;Landroid/widget/Button;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "b"    # Landroid/widget/Button;

    .line 4221
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$maddActionButton(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;Landroid/widget/Button;)V

    .line 4222
    return-void
.end method

.method public blacklist createCopyButton()Landroid/widget/Button;
    .locals 1

    .line 4226
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcreateCopyButton(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createNearbyButton(Landroid/content/Intent;)Landroid/widget/Button;
    .locals 1
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 4231
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcreateNearbyButton(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCreateContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 4206
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcreateContentPreviewView(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 4216
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hideStickyContentPreview()V
    .locals 1

    .line 4211
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserActivityWrapper;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mhideStickyContentPreview(Lcom/android/internal/app/ChooserActivity;)V

    .line 4212
    return-void
.end method
