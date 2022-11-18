.class public final synthetic Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteCollectionItemsAdapter;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteCollectionItemsAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteCollectionItemsAdapter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(I)I
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteCollectionItemsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteCollectionItemsAdapter;->lambda$initLayoutIdToViewType$0$android-widget-RemoteCollectionItemsAdapter(I)I

    move-result p1

    return p1
.end method
