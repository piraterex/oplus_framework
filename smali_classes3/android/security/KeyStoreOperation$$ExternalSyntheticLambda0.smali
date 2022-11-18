.class public final synthetic Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/security/CheckedRemoteRequest;


# instance fields
.field public final synthetic blacklist f$0:Landroid/security/KeyStoreOperation;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/security/KeyStoreOperation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda0;->f$0:Landroid/security/KeyStoreOperation;

    return-void
.end method


# virtual methods
.method public final blacklist execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda0;->f$0:Landroid/security/KeyStoreOperation;

    invoke-virtual {v0}, Landroid/security/KeyStoreOperation;->lambda$abort$3$android-security-KeyStoreOperation()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
