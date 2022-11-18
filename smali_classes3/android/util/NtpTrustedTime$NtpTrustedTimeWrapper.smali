.class Landroid/util/NtpTrustedTime$NtpTrustedTimeWrapper;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/INtpTrustedTimeWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NtpTrustedTimeWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/NtpTrustedTime;


# direct methods
.method private constructor blacklist <init>(Landroid/util/NtpTrustedTime;)V
    .locals 0

    .line 433
    iput-object p1, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeWrapper;->this$0:Landroid/util/NtpTrustedTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/NtpTrustedTime;Landroid/util/NtpTrustedTime$NtpTrustedTimeWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime$NtpTrustedTimeWrapper;-><init>(Landroid/util/NtpTrustedTime;)V

    return-void
.end method


# virtual methods
.method public blacklist setTimeResult(Landroid/util/NtpTrustedTime$TimeResult;)V
    .locals 1
    .param p1, "result"    # Landroid/util/NtpTrustedTime$TimeResult;

    .line 436
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeWrapper;->this$0:Landroid/util/NtpTrustedTime;

    invoke-static {v0, p1}, Landroid/util/NtpTrustedTime;->-$$Nest$fputmTimeResult(Landroid/util/NtpTrustedTime;Landroid/util/NtpTrustedTime$TimeResult;)V

    .line 437
    return-void
.end method
