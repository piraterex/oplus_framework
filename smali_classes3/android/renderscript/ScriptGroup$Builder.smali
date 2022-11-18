.class public final Landroid/renderscript/ScriptGroup$Builder;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mKernelCount:I

.field private greylist-max-o mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/renderscript/ScriptGroup$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor whitelist <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 572
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 573
    return-void
.end method

.method private greylist-max-o findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;
    .locals 4
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;

    .line 654
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 655
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    .line 656
    .local v1, "n":Landroid/renderscript/ScriptGroup$Node;
    const/4 v2, 0x0

    .local v2, "ct2":I
    :goto_1
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 657
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 658
    return-object v1

    .line 656
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 654
    .end local v1    # "n":Landroid/renderscript/ScriptGroup$Node;
    .end local v2    # "ct2":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    .end local v0    # "ct":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;
    .locals 2
    .param p1, "s"    # Landroid/renderscript/Script;

    .line 645
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 646
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$Node;->mScript:Landroid/renderscript/Script;

    if-ne p1, v1, :cond_0

    .line 647
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    return-object v1

    .line 645
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    .end local v0    # "ct":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o mergeDAGs(II)V
    .locals 2
    .param p1, "valueUsed"    # I
    .param p2, "valueKilled"    # I

    .line 598
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 599
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iget v1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-ne v1, p2, :cond_0

    .line 600
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    iput p1, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 598
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "ct":I
    :cond_1
    return-void
.end method

.method private greylist-max-o validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V
    .locals 5
    .param p1, "target"    # Landroid/renderscript/ScriptGroup$Node;
    .param p2, "original"    # Landroid/renderscript/ScriptGroup$Node;

    .line 578
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 579
    iget-object v1, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 580
    .local v1, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    const-string v3, "Loops in group not allowed."

    if-eqz v2, :cond_1

    .line 581
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v2, v2, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 582
    .local v2, "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 585
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    goto :goto_1

    .line 583
    :cond_0
    new-instance v4, Landroid/renderscript/RSInvalidStateException;

    invoke-direct {v4, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 587
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    :goto_1
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v2, :cond_3

    .line 588
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v2, v2, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 589
    .restart local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 592
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    goto :goto_2

    .line 590
    :cond_2
    new-instance v4, Landroid/renderscript/RSInvalidStateException;

    invoke-direct {v4, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 578
    .end local v1    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    .end local v0    # "ct":I
    :cond_4
    return-void
.end method

.method private greylist-max-o validateDAG()V
    .locals 4

    .line 626
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 627
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    .line 628
    .local v1, "n":Landroid/renderscript/ScriptGroup$Node;
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 629
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    goto :goto_1

    .line 630
    :cond_0
    const-string v2, "Groups cannot contain unconnected scripts"

    .line 631
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    invoke-direct {v3, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 633
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v1, v2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 626
    .end local v1    # "n":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    .end local v0    # "ct":I
    :cond_3
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$Node;

    iget v0, v0, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 637
    .local v0, "dagNumber":I
    const/4 v1, 0x0

    .local v1, "ct":I
    :goto_2
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 638
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Node;

    iget v2, v2, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-ne v2, v0, :cond_4

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 639
    :cond_4
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "Multiple DAGs in group not allowed."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 642
    .end local v1    # "ct":I
    :cond_5
    return-void
.end method

.method private greylist-max-o validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V
    .locals 3
    .param p1, "n"    # Landroid/renderscript/ScriptGroup$Node;
    .param p2, "dagNumber"    # I

    .line 606
    iget v0, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eq v0, p2, :cond_0

    .line 607
    iget v0, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    invoke-direct {p0, v0, p2}, Landroid/renderscript/ScriptGroup$Builder;->mergeDAGs(II)V

    .line 608
    return-void

    .line 611
    :cond_0
    iput p2, p1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 612
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 613
    iget-object v1, p1, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 614
    .local v1, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v2, :cond_1

    .line 615
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v2, v2, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 616
    .local v2, "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 618
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v2, :cond_2

    .line 619
    iget-object v2, v1, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v2, v2, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 620
    .restart local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/renderscript/ScriptGroup$Node;I)V

    .line 612
    .end local v1    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    .end local v2    # "tn":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    .end local v0    # "ct":I
    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 5
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$FieldID;

    .line 710
    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v0

    .line 711
    .local v0, "nf":Landroid/renderscript/ScriptGroup$Node;
    if-eqz v0, :cond_1

    .line 715
    iget-object v1, p3, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    .line 716
    .local v1, "nt":Landroid/renderscript/ScriptGroup$Node;
    if-eqz v1, :cond_0

    .line 720
    new-instance v2, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v2, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    .line 721
    .local v2, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-direct {p0, v0, v0}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 727
    return-object p0

    .line 717
    .end local v2    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_0
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "To script not found."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 712
    .end local v1    # "nt":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "From script not found."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 5
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "from"    # Landroid/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/renderscript/Script$KernelID;

    .line 745
    invoke-direct {p0, p2}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v0

    .line 746
    .local v0, "nf":Landroid/renderscript/ScriptGroup$Node;
    if-eqz v0, :cond_1

    .line 750
    invoke-direct {p0, p3}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v1

    .line 751
    .local v1, "nt":Landroid/renderscript/ScriptGroup$Node;
    if-eqz v1, :cond_0

    .line 755
    new-instance v2, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v2, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    .line 756
    .local v2, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v3, v0, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v3, v1, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-direct {p0, v0, v0}, Landroid/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/renderscript/ScriptGroup$Node;Landroid/renderscript/ScriptGroup$Node;)V

    .line 762
    return-object p0

    .line 752
    .end local v2    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    :cond_0
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "To script not found."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 747
    .end local v1    # "nt":Landroid/renderscript/ScriptGroup$Node;
    :cond_1
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "From script not found."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addKernel(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    .locals 3
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;

    .line 674
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 680
    invoke-direct {p0, p1}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    return-object p0

    .line 684
    :cond_0
    iget v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    .line 685
    iget-object v0, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {p0, v0}, Landroid/renderscript/ScriptGroup$Builder;->findNode(Landroid/renderscript/Script;)Landroid/renderscript/ScriptGroup$Node;

    move-result-object v0

    .line 686
    .local v0, "n":Landroid/renderscript/ScriptGroup$Node;
    if-nez v0, :cond_1

    .line 688
    new-instance v1, Landroid/renderscript/ScriptGroup$Node;

    iget-object v2, p1, Landroid/renderscript/Script$KernelID;->mScript:Landroid/renderscript/Script;

    invoke-direct {v1, v2}, Landroid/renderscript/ScriptGroup$Node;-><init>(Landroid/renderscript/Script;)V

    move-object v0, v1

    .line 689
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_1
    iget-object v1, v0, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    return-object p0

    .line 675
    .end local v0    # "n":Landroid/renderscript/ScriptGroup$Node;
    :cond_2
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Kernels may not be added once connections exist."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist create()Landroid/renderscript/ScriptGroup;
    .locals 14

    .line 775
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 780
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 781
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Node;

    const/4 v2, 0x0

    iput v2, v1, Landroid/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    .end local v0    # "ct":I
    :cond_0
    invoke-direct {p0}, Landroid/renderscript/ScriptGroup$Builder;->validateDAG()V

    .line 785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v0, "inputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v1, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    iget v2, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    new-array v2, v2, [J

    .line 789
    .local v2, "kernels":[J
    const/4 v3, 0x0

    .line 790
    .local v3, "idx":I
    const/4 v4, 0x0

    move v9, v3

    .end local v3    # "idx":I
    .local v4, "ct":I
    .local v9, "idx":I
    :goto_1
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_8

    .line 791
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/renderscript/ScriptGroup$Node;

    .line 792
    .local v3, "n":Landroid/renderscript/ScriptGroup$Node;
    const/4 v5, 0x0

    .local v5, "ct2":I
    :goto_2
    iget-object v6, v3, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 793
    iget-object v6, v3, Landroid/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/renderscript/Script$KernelID;

    .line 794
    .local v6, "kid":Landroid/renderscript/Script$KernelID;
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "idx":I
    .local v7, "idx":I
    iget-object v8, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v8}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v10

    aput-wide v10, v2, v9

    .line 796
    const/4 v8, 0x0

    .line 797
    .local v8, "hasInput":Z
    const/4 v9, 0x0

    .line 798
    .local v9, "hasOutput":Z
    const/4 v10, 0x0

    .local v10, "ct3":I
    :goto_3
    iget-object v11, v3, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 799
    iget-object v11, v3, Landroid/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v11, v11, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-ne v11, v6, :cond_1

    .line 800
    const/4 v8, 0x1

    .line 798
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 803
    .end local v10    # "ct3":I
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "ct3":I
    :goto_4
    iget-object v11, v3, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 804
    iget-object v11, v3, Landroid/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/renderscript/ScriptGroup$ConnectLine;

    iget-object v11, v11, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    if-ne v11, v6, :cond_3

    .line 805
    const/4 v9, 0x1

    .line 803
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 808
    .end local v10    # "ct3":I
    :cond_4
    if-nez v8, :cond_5

    .line 809
    new-instance v10, Landroid/renderscript/ScriptGroup$IO;

    invoke-direct {v10, v6}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_5
    if-nez v9, :cond_6

    .line 812
    new-instance v10, Landroid/renderscript/ScriptGroup$IO;

    invoke-direct {v10, v6}, Landroid/renderscript/ScriptGroup$IO;-><init>(Landroid/renderscript/Script$KernelID;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .end local v6    # "kid":Landroid/renderscript/Script$KernelID;
    .end local v8    # "hasInput":Z
    .end local v9    # "hasOutput":Z
    :cond_6
    add-int/lit8 v5, v5, 0x1

    move v9, v7

    goto :goto_2

    .line 790
    .end local v3    # "n":Landroid/renderscript/ScriptGroup$Node;
    .end local v5    # "ct2":I
    .end local v7    # "idx":I
    .local v9, "idx":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 817
    .end local v4    # "ct":I
    :cond_8
    iget v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mKernelCount:I

    if-ne v9, v3, :cond_f

    .line 821
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v10, v3, [J

    .line 822
    .local v10, "src":[J
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v11, v3, [J

    .line 823
    .local v11, "dstk":[J
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v12, v3, [J

    .line 824
    .local v12, "dstf":[J
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v13, v3, [J

    .line 826
    .local v13, "types":[J
    const/4 v3, 0x0

    .local v3, "ct":I
    :goto_5
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 827
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/renderscript/ScriptGroup$ConnectLine;

    .line 828
    .local v4, "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    iget-object v5, v4, Landroid/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/renderscript/Script$KernelID;

    iget-object v6, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v10, v3

    .line 829
    iget-object v5, v4, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    if-eqz v5, :cond_9

    .line 830
    iget-object v5, v4, Landroid/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/renderscript/Script$KernelID;

    iget-object v6, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v11, v3

    .line 832
    :cond_9
    iget-object v5, v4, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    if-eqz v5, :cond_a

    .line 833
    iget-object v5, v4, Landroid/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/renderscript/Script$FieldID;

    iget-object v6, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v12, v3

    .line 835
    :cond_a
    iget-object v5, v4, Landroid/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/renderscript/Type;

    iget-object v6, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    aput-wide v5, v13, v3

    .line 826
    .end local v4    # "cl":Landroid/renderscript/ScriptGroup$ConnectLine;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 838
    .end local v3    # "ct":I
    :cond_b
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    move-object v4, v2

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nScriptGroupCreate([J[J[J[J[J)J

    move-result-wide v3

    .line 839
    .local v3, "id":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_e

    .line 843
    new-instance v5, Landroid/renderscript/ScriptGroup;

    iget-object v6, p0, Landroid/renderscript/ScriptGroup$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v5, v3, v4, v6}, Landroid/renderscript/ScriptGroup;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 844
    .local v5, "sg":Landroid/renderscript/ScriptGroup;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/renderscript/ScriptGroup$IO;

    iput-object v6, v5, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    .line 845
    const/4 v6, 0x0

    .local v6, "ct":I
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 846
    iget-object v7, v5, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/renderscript/ScriptGroup$IO;

    aput-object v8, v7, v6

    .line 845
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 849
    .end local v6    # "ct":I
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/renderscript/ScriptGroup$IO;

    iput-object v6, v5, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    .line 850
    const/4 v6, 0x0

    .restart local v6    # "ct":I
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 851
    iget-object v7, v5, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/renderscript/ScriptGroup$IO;

    aput-object v8, v7, v6

    .line 850
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 854
    .end local v6    # "ct":I
    :cond_d
    return-object v5

    .line 840
    .end local v5    # "sg":Landroid/renderscript/ScriptGroup;
    :cond_e
    new-instance v5, Landroid/renderscript/RSRuntimeException;

    const-string v6, "Object creation error, should not happen."

    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 818
    .end local v3    # "id":J
    .end local v10    # "src":[J
    .end local v11    # "dstk":[J
    .end local v12    # "dstf":[J
    .end local v13    # "types":[J
    :cond_f
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Count mismatch, should not happen."

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 776
    .end local v0    # "inputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    .end local v1    # "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/renderscript/ScriptGroup$IO;>;"
    .end local v2    # "kernels":[J
    .end local v9    # "idx":I
    :cond_10
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Empty script groups are not allowed"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
