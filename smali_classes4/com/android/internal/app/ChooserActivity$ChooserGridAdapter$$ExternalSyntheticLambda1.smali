.class public final synthetic Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field public final synthetic blacklist f$1:Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->lambda$loadViewsIntoGroup$0$com-android-internal-app-ChooserActivity$ChooserGridAdapter(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
