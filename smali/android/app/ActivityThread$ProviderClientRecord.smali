.class final Landroid/app/ActivityThread$ProviderClientRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderClientRecord"
.end annotation


# instance fields
.field final greylist mHolder:Landroid/app/ContentProviderHolder;

.field final greylist mLocalProvider:Landroid/content/ContentProvider;

.field final greylist-max-o mNames:[Ljava/lang/String;

.field final greylist mProvider:Landroid/content/IContentProvider;

.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "provider"    # Landroid/content/IContentProvider;
    .param p4, "localProvider"    # Landroid/content/ContentProvider;
    .param p5, "holder"    # Landroid/app/ContentProviderHolder;

    .line 791
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderClientRecord;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object p2, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mNames:[Ljava/lang/String;

    .line 793
    iput-object p3, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 794
    iput-object p4, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    .line 795
    iput-object p5, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    .line 796
    return-void
.end method
