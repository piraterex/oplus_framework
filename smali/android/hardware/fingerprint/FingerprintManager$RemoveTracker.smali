.class Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker$RemoveRequest;
    }
.end annotation


# static fields
.field static final blacklist REMOVE_ALL:I = 0x2

.field static final blacklist REMOVE_SINGLE:I = 0x1


# instance fields
.field final blacklist mRemoveRequest:I

.field final blacklist mSingleFingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method constructor blacklist <init>(ILandroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p1, "request"    # I
    .param p2, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;->mRemoveRequest:I

    .line 148
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;->mSingleFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 149
    return-void
.end method
