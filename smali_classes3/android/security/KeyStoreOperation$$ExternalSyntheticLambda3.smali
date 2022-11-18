.class public final synthetic Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/security/CheckedRemoteRequest;


# instance fields
.field public final synthetic blacklist f$0:Landroid/security/KeyStoreOperation;

.field public final synthetic blacklist f$1:[B


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/security/KeyStoreOperation;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda3;->f$0:Landroid/security/KeyStoreOperation;

    iput-object p2, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda3;->f$1:[B

    return-void
.end method


# virtual methods
.method public final blacklist execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda3;->f$0:Landroid/security/KeyStoreOperation;

    iget-object v1, p0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda3;->f$1:[B

    invoke-virtual {v0, v1}, Landroid/security/KeyStoreOperation;->lambda$updateAad$0$android-security-KeyStoreOperation([B)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
