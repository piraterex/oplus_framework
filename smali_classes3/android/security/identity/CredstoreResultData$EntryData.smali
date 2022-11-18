.class Landroid/security/identity/CredstoreResultData$EntryData;
.super Ljava/lang/Object;
.source "CredstoreResultData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/CredstoreResultData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryData"
.end annotation


# instance fields
.field blacklist mStatus:I

.field blacklist mValue:[B


# direct methods
.method constructor blacklist <init>([BI)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "status"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/security/identity/CredstoreResultData$EntryData;->mValue:[B

    .line 47
    iput p2, p0, Landroid/security/identity/CredstoreResultData$EntryData;->mStatus:I

    .line 48
    return-void
.end method
