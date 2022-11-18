.class public Landroid/util/HashedStringCache$HashResult;
.super Ljava/lang/Object;
.source "HashedStringCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HashedStringCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashResult"
.end annotation


# instance fields
.field public blacklist hashedString:Ljava/lang/String;

.field public blacklist saltGeneration:I

.field final synthetic blacklist this$0:Landroid/util/HashedStringCache;


# direct methods
.method public constructor blacklist <init>(Landroid/util/HashedStringCache;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/util/HashedStringCache;
    .param p2, "hString"    # Ljava/lang/String;
    .param p3, "saltGen"    # I

    .line 205
    iput-object p1, p0, Landroid/util/HashedStringCache$HashResult;->this$0:Landroid/util/HashedStringCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Landroid/util/HashedStringCache$HashResult;->hashedString:Ljava/lang/String;

    .line 207
    iput p3, p0, Landroid/util/HashedStringCache$HashResult;->saltGeneration:I

    .line 208
    return-void
.end method
