.class Lcom/android/internal/app/ChooserActivity$1;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mWrittenOnce:Z

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 713
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$1;->mWrittenOnce:Z

    return-void
.end method


# virtual methods
.method public blacklist onCollapsedChanged(Z)V
    .locals 1
    .param p1, "isCollapsed"    # Z

    .line 720
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$1;->mWrittenOnce:Z

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mincrementNumSheetExpansions(Lcom/android/internal/app/ChooserActivity;)V

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$1;->mWrittenOnce:Z

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    .line 725
    invoke-interface {v0, p1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetExpansionChanged(Z)V

    .line 726
    return-void
.end method
